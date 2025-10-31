import 'package:flutter/material.dart';

class ResizablePane extends StatefulWidget {
  final Widget child;
  final double initialSize;
  final double minSize;
  final double maxSize;
  final Axis resizeAxis;

  const ResizablePane({
    Key? key,
    required this.child,
    this.initialSize = 200,
    this.minSize = 100,
    this.maxSize = 500,
    this.resizeAxis = Axis.horizontal,
  }) : super(key: key);

  @override
  _ResizablePaneState createState() => _ResizablePaneState();
}

class _ResizablePaneState extends State<ResizablePane> {
  late double _currentSize;

  @override
  void initState() {
    super.initState();
    _currentSize = widget.initialSize;
  }

  void _handleDrag(DragUpdateDetails details) {
    setState(() {
      if (widget.resizeAxis == Axis.horizontal) {
        _currentSize += details.delta.dx;
      } else {
        _currentSize += details.delta.dy;
      }
      _currentSize = _currentSize.clamp(widget.minSize, widget.maxSize);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: widget.resizeAxis == Axis.horizontal ? _currentSize : null,
          height: widget.resizeAxis == Axis.vertical ? _currentSize : null,
          child: widget.child,
        ),
        Positioned(
          right: widget.resizeAxis == Axis.horizontal ? 0 : null,
          bottom: widget.resizeAxis == Axis.vertical ? 0 : null,
          child: GestureDetector(
            onHorizontalDragUpdate:
                widget.resizeAxis == Axis.horizontal ? _handleDrag : null,
            onVerticalDragUpdate:
                widget.resizeAxis == Axis.vertical ? _handleDrag : null,
            child: MouseRegion(
              cursor: widget.resizeAxis == Axis.horizontal
                  ? SystemMouseCursors.resizeLeftRight
                  : SystemMouseCursors.resizeUpDown,
              child: Container(
                width: 10,
                height:
                    widget.resizeAxis == Axis.horizontal ? double.infinity : 10,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// TODO(arenukvern):
// CRUD pixelized line - make it adaptive to width, height
// Draw pixelized line
//
