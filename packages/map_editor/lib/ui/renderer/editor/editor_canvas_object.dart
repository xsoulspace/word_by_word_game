part of 'editor_renderer.dart';

class EditorCanvasObject extends Component
    with
        TapCallbacks,
        DragCallbacks,
        HasGameRef<GameRenderer>,
        HasEditorRef,
        HasResourcesLoaderRef {
  EditorCanvasObject({
    required this.gid,
    required this.animationEntry,
    required this.position,
    required this.tileId,
    this.onPositionChanged,
  });
  factory EditorCanvasObject.fromModel({
    required final material.ValueChanged<Offset> onPositionChanged,
    required final EditorCanvasObjectsDrawer drawer,
    required final EditorGameObjectModel data,
  }) =>
      EditorCanvasObject(
        animationEntry: drawer.animations[data.id.value]!,
        gid: data.id,
        position: data.position.toOffset(),
        tileId: data.tileId,
        onPositionChanged: onPositionChanged,
      );

  final material.ValueChanged<Offset>? onPositionChanged;
  final Gid gid;
  final TileId tileId;

  Offset position;
  AnimationEntryModel animationEntry;
  Offset distanceToOrigin = Offset.zero;
  Offset distanceToTileLeftTopCorner = Offset.zero;

  void _updateDistanceToOrigin() {
    distanceToOrigin = position - origin.toOffset();
    final cell =
        OriginVectorUtils.use(origin).getCurrentCellByCanvasObject(this);
    final cellTopLeftPosition = Offset(
      (cell.x * kTileDimension).toDouble(),
      (cell.y * kTileDimension).toDouble(),
    );
    distanceToTileLeftTopCorner = distanceToOrigin - cellTopLeftPosition;
  }

  @override
  FutureOr<void> onLoad() {
    _updateDistanceToOrigin();
    return super.onLoad();
  }

  Rect? _imageRect;
  Rect? get _positionedImageRect => _imageRect?.shift(position);

  @override
  void render(final Canvas canvas) {
    final tilePath = animationEntry.currentFramePath;
    final tileImage = getImage(tilePath);
    _imageRect ??= Rect.fromLTWH(
      0,
      0,
      tileImage.width.toDouble(),
      tileImage.height.toDouble(),
    );
    canvas.drawImage(
      tileImage,
      position,
      Palette.white.paint(),
    );
    super.render(canvas);
  }

  bool _selected = false;
  Vector2 _dragOffset = Vector2.zero();

  @override
  void onDragStart(final DragStartEvent event) {
    _selected = true;
    _dragOffset = event.canvasPosition - position.toVector2();

    return super.onDragStart(event);
  }

  @override
  void onDragUpdate(final DragUpdateEvent event) {
    if (event.canvasPosition.isNaN) return super.onDragUpdate(event);
    if (_selected) {
      position = (event.canvasPosition - _dragOffset).toOffset();
      onPositionChanged?.call(position);
      _updateDistanceToOrigin();
    }

    return super.onDragUpdate(event);
  }

  @override
  void onDragCancel(final DragCancelEvent event) {
    _selected = false;
    return super.onDragCancel(event);
  }

  @override
  void onDragEnd(final DragEndEvent event) {
    _selected = false;
    return super.onDragEnd(event);
  }

  @override
  void update(final double dt) {
    super.update(dt);
    animationEntry = AnimationUpdater.updateAnimationFrame(
      entry: animationEntry,
      config: game.config,
      dt: dt,
    );
  }

  void onOriginUpdate() {
    _updatePosition();
  }

  void _updatePosition() {
    position = origin.toOffset() + distanceToOrigin;
  }

  @override
  bool containsLocalPoint(final Vector2 point) =>
      _positionedImageRect?.containsPoint(point) ?? false;
}

class EditorCanvasObjectsDrawer extends Component
    with HasGameRef<GameRenderer>, HasEditorRef, HasResourcesLoaderRef {
  MapEditorCubit get _mapEditorBloc => game.diDto.mapEditorBloc;

  Future<void> _addCanvasObjects(
    final Iterable<EditorCanvasObject?> objects,
  ) async {
    await addAll(objects.whereNotNull());
  }

  List<EditorCanvasObject> get canvasObjects =>
      [_skyHandle, _gravitationHandle, _player].whereNotNull().toList();

  void onOriginUpdate() {
    for (final canvasObject in canvasObjects) {
      canvasObject.onOriginUpdate();
    }
  }

  EditorCanvasObject? _player;
  EditorCanvasObject? _gravitationHandle;
  EditorCanvasObject? _skyHandle;

  @override
  FutureOr<void> onLoad() async {
    _loadPlayer();
    _loadGravitationHandle();
    _loadSkyHandle();

    await _addCanvasObjects(canvasObjects);
    return super.onLoad();
  }

  void _loadPlayer() {
    final gid = kPlayerObjectId.toGid();
    // _mapEditorBloc.loadedState;
    _player = EditorCanvasObject(
      gid: gid,
      animationEntry: animations[kPlayerObjectId.value]!,
      tileId: kPlayerObjectId,
      position: (game.size / 2).toOffset(),
    );
  }

  void _loadSkyHandle() {
    _skyHandle = EditorCanvasObject(
      gid: kCursorHandleObjectId.toGid(),
      animationEntry: AnimationEntryModel.singleFrame(
        game.resourcesLoader.cursorHandlePath,
      ),
      tileId: kCursorHandleObjectId,
      position: (game.size / 2).toOffset(),
      onPositionChanged: (final position) {
        drawerCubit.changeState(
          drawerCubit.state.copyWith(
            skyYPosition: position.dy,
          ),
        );
      },
    );
  }

  void _loadGravitationHandle() {
    _gravitationHandle = EditorCanvasObject(
      animationEntry: AnimationEntryModel.singleFrame(
        game.resourcesLoader.cursorHandlePath,
      ),
      gid: kCursorHandleObjectId.toGid(),
      tileId: kCursorHandleObjectId,
      position: (game.size / 2).toOffset(),
      onPositionChanged: (final position) {
        drawerCubit.changeState(
          drawerCubit.state.copyWith(
            gravityYPosition: position.dy,
          ),
        );
      },
    );
  }

  @override
  void render(final Canvas canvas) {
    _renderGravitationLine(canvas);
    _renderSkyHorizon(canvas);
    super.render(canvas);
  }

  final _gravitationLinePaint = Palette.brown.paint()..strokeWidth = 2;
  void _renderGravitationLine(final Canvas canvas) {
    final dy = (_gravitationHandle?.position.dy ?? 0) + 20;
    canvas.drawLine(
      Offset(0, dy),
      Offset(editor.windowWidth, dy),
      _gravitationLinePaint,
    );
  }

  final _skyHorizonPaint = Palette.blue.paint()..strokeWidth = 2;
  void _renderSkyHorizon(final Canvas canvas) {
    final dy = (_skyHandle?.position.dy ?? 0) + 20;

    canvas.drawLine(
      Offset(0, dy),
      Offset(editor.windowWidth, dy),
      _skyHorizonPaint,
    );
  }
}
