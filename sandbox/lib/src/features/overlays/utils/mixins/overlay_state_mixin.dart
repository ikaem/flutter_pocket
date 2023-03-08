import 'package:flutter/material.dart';

mixin OverlayStateMixin<T extends StatefulWidget> on State<T> {
// this is possible be cuase we only use tghis mixin on state
  @override
  void dispose() {
    removeOverlay();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    removeOverlay();
    super.didChangeDependencies();
  }

  // this is the overlay entry that we will use
  OverlayEntry? _overlayEntry;

  bool get isOverlayShown => _overlayEntry != null;

  void toggleOverlay(Widget child) =>
      isOverlayShown ? removeOverlay() : _insertOverlay(child);

  // we are removing entry
  void removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  // this creates a dismissable overlay
  Widget _dismissibleOverlay(Widget child) {
    return Stack(
      children: [
        Positioned.fill(
          child: ColoredBox(
            color: Colors.blue,
            child: GestureDetector(
              onTap: removeOverlay,
            ),
          ),
        ),
        child,
      ],
    );
  }

  void _insertOverlay(Widget child) {
    // this creates overlay entry
    _overlayEntry = OverlayEntry(
      builder: (context) => _dismissibleOverlay(child),
    );

    // this inserts overlay entry into overlay state
    Overlay.of(context).insert(_overlayEntry!);
  }
}
