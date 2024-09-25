import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

import '../../../wbw_core.dart';

class TutorialFrame extends StatelessWidget {
  const TutorialFrame({
    required this.highlightPosition,
    required this.uiKey,
    required this.child,
    super.key,
  });
  final Alignment highlightPosition;
  final TutorialUiItem uiKey;
  final Widget child;
  static void sendOnClickEvent({
    required final TutorialUiItem uiKey,
    required final BuildContext context,
  }) {
    final event = TutorialUiActionEvent(
      action: TutorialCompleteAction.onClick,
      key: uiKey,
    );
    context.read<TutorialBloc>().onTutorialUiAction(event);
  }

  @override
  Widget build(final BuildContext context) {
    final highlighted =
        context.select<TutorialBloc, bool>((final tutorialBloc) {
      if (tutorialBloc.state is! TutorialBlocStateLive) return false;
      final tutorialEvent = tutorialBloc.getTutorialEvent();

      return tutorialEvent.anchorUiItem == uiKey;
    });

    final persistentFormFactors = UiPersistentFormFactors.of(context);
    final isMobile = persistentFormFactors.screenSize.width <
        WidthFormFactor.mobileTutorialMaxWidth;

    return PortalTarget(
      anchor: highlightPosition.toAnchor(),

      /// mobile dialog is in HudOverlay, so there is only desktop
      /// will be displayed
      portalFollower: DesktopAnchoredTutorialDialog(
        highlightPosition: highlightPosition,
      ),
      visible: highlighted && !isMobile,
      child: UiHighlightFrame(
        onPressed: () {
          sendOnClickEvent(context: context, uiKey: uiKey);
        },
        highlighted: highlighted,
        highlightPosition: highlightPosition,
        child: child,
      ),
    );
    // }
  }
}

class TutorialEntryOverlay extends StatefulWidget {
  const TutorialEntryOverlay({
    required this.visible,
    required this.child,
    required this.overlayChild,
    required this.alignment,
    super.key,
  });
  final bool visible;
  final Widget child;
  final Widget overlayChild;
  final Alignment alignment;

  @override
  State<TutorialEntryOverlay> createState() => _TutorialEntryOverlayState();
}

class _TutorialEntryOverlayState extends State<TutorialEntryOverlay> {
  OverlayEntry? _overlayEntry;
  // Remove the OverlayEntry.
  void _removeHighlightOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  final globalKey = GlobalKey();

  void _createHighlightOverlay() {
    // Remove the existing OverlayEntry.
    _removeHighlightOverlay();

    assert(_overlayEntry == null, '');

    _overlayEntry = OverlayEntry(
      builder: (final context) {
        MediaQuery.sizeOf(context);
        final RenderBox? renderBox =
            globalKey.currentContext!.findRenderObject() as RenderBox?;
        final Offset offset = renderBox!.localToGlobal(Offset.zero);

        return Positioned(
          left: offset.dx,
          bottom: renderBox.size.height,
          child: Builder(
            builder: (final context) => widget.overlayChild,
          ),
        );
      },
    );

    // Add the OverlayEntry to the Overlay.
    Overlay.of(context, debugRequiredFor: widget).insert(_overlayEntry!);
  }

  @override
  void didUpdateWidget(covariant final TutorialEntryOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
      final visible = widget.visible;
      if (oldWidget.visible != visible) {
        if (visible) {
          _createHighlightOverlay();
        } else {
          _removeHighlightOverlay();
        }
      }
    });
  }

  @override
  void dispose() {
    // Make sure to remove OverlayEntry when the widget is disposed.
    _removeHighlightOverlay();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => SizedBox(
        key: globalKey,
        child: widget.child,
      );
}
