part of 'game_renderer.dart';

class EditorRenderer extends Component
    with DragCallbacks, HasGameRef<GameRenderer>, Hoverable {
  Vector2 origin = Vector2.zero();

  /// First cell position to calculate the grid and positions
  @useResult
  Vector2 getOffsetOrigin() => Vector2(
        origin.x - ((origin.x ~/ kTileDimension) * kTileDimension),
        origin.y - ((origin.y ~/ kTileDimension) * kTileDimension),
      );
  Vector2 get gameSize => game.camera.gameSize;
  double get windowHeight => gameSize.y;
  double get windowWidth => gameSize.x;
  double get tileColumns => (windowWidth / kTileDimension) + 1;
  double get tileRows => (windowHeight / kTileDimension) + 1;
  final debugSurface = DebugSurface();
  final cursor = CursorRenderer();
  final tilesDrawer = TilesDrawer();
  final tilesRenderer = TilesRenderer();
  Vector2 _dragOffset = Vector2.zero();
  final animationUpdater = AnimationUpdater();
  final canvasObjectsDrawer = CanvasObjectsDrawer();

  @override
  FutureOr<void> onLoad() {
    addAll([
      // RENDER
      tilesRenderer,
      debugSurface,
      tilesDrawer,
      canvasObjectsDrawer,
      cursor,
      // LOGIC
      animationUpdater,
    ]);

    return super.onLoad();
  }

  @override
  void onDragStart(final DragStartEvent event) {
    _dragOffset = event.canvasPosition - origin;
    return super.onDragStart(event);
  }

  @override
  void onDragUpdate(final DragUpdateEvent event) {
    final eventPosition = event.canvasPosition;
    origin = eventPosition - _dragOffset;
    hoveredPosition = eventPosition;
    canvasObjectsDrawer.onOriginUpdate();
    super.onDragUpdate(event);
  }

  material.Paint get _redPaint => Palette.red.paint();
  material.Paint get _greenPaint => Palette.green.paint();

  void _renderOrigin(final material.Canvas canvas) {
    canvas.drawCircle(
      origin.toOffset(),
      15,
      _redPaint,
    );
  }

  void _renderOffsetOrigin(final material.Canvas canvas) {
    canvas.drawCircle(
      getOffsetOrigin().toOffset(),
      15,
      _greenPaint,
    );
  }

  Vector2 hoveredPosition = Vector2.zero();
  @override
  // ignore: invalid_override_of_non_virtual_member
  bool handleMouseMovement(final PointerHoverInfo info) {
    hoveredPosition = info.eventPosition.viewport;
    return super.handleMouseMovement(info);
  }

  @override
  void render(final material.Canvas canvas) {
    super.render(canvas);

    _renderOrigin(canvas);
    _renderOffsetOrigin(canvas);
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}

mixin HasEditorRef on Component, HasGameRef<GameRenderer> {
  EditorRenderer? _editor;
  EditorRenderer get editor => _editor ??= game.editor;
  DrawerCubit get drawerCubit => game.diDto.drawerCubit;
  Vector2 get origin => editor.origin;
  @useResult
  Vector2 getOffsetOrigin() => editor.getOffsetOrigin();
  set origin(final Vector2 value) => editor.origin = value;
  double get windowHeight => editor.windowHeight;
  double get windowWidth => editor.windowWidth;
  double get tileColumns => editor.tileColumns;
  double get tileRows => editor.tileRows;
  Map<CellPointModel, CanvasTileModel> get canvasData =>
      game.diDto.drawerCubit.canvasData;
  set canvasData(final Map<CellPointModel, CanvasTileModel> value) =>
      game.diDto.drawerCubit.canvasData = value;
}

class CursorRenderer extends Component
    with HasGameRef<GameRenderer>, HasEditorRef {
  Image? _image;
  @override
  FutureOr<void> onLoad() async {
    _image = await game.images.load(
      Assets.images.cursors.cursor.path.replaceAll('assets/images/', ''),
    );
    return super.onLoad();
  }

  final _paint = material.Paint();
  @override
  void render(final Canvas canvas) {
    super.render(canvas);
    if (_image != null && editor.isHovered) {
      canvas.drawImage(_image!, editor.hoveredPosition.toOffset(), _paint);
    }
  }
}
