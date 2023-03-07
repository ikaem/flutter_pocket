import 'package:flutter/material.dart';
import 'package:sandbox/src/features/overlays/presentation/screens/kodeco_overlays_screen.dart';

class OverlaysScreen extends StatelessWidget {
  static const routeName = "overlays";

  const OverlaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const KodecoOverlaysScreen(),
              )),
              child: const Text(
                "To Kodeco Overlays Screen",
              ),
            ),
            const Text("This is some text"),
            TextButton(
              onPressed: () => _showOverlays(context),
              child: const Text("Show overlays"),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showOverlays(BuildContext context) async {
    // we need current overlay state
    final OverlayState overlayState = Overlay.of(context);
    // now we need to define overlay entries
    final OverlayEntry overlayEntry1 = _createOverlaysEntry(
        left: 0, top: 0, color: Colors.red, label: "Hello Overlay entry 1");
    final OverlayEntry overlayEntry2 = _createOverlaysEntry(
        left: 100,
        top: 100,
        color: Colors.yellow,
        label: "Hello Overlay entry 2");
    final OverlayEntry overlayEntry3 = _createOverlaysEntry(
        left: 200,
        top: 200,
        color: Colors.blue,
        label: "Hello Overlay entry 3");

    // add to state
    overlayState.insertAll([overlayEntry1, overlayEntry2, overlayEntry3]);

    // clsoe programiatically - but could be done on event by user
    await Future.delayed(const Duration(seconds: 1));
    overlayEntry1.remove();

    await Future.delayed(const Duration(seconds: 1));
    overlayEntry2.remove();

    await Future.delayed(const Duration(seconds: 1));
    overlayEntry3.remove();
  }

  OverlayEntry _createOverlaysEntry({
    required double left,
    required double top,
    required Color color,
    required String label,
  }) {
    return OverlayEntry(
      builder: (context) {
        // note that we use positioned to position overlays
        return Positioned(
          left: left,
          top: top,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              color: color,
              child: Center(
                child: Text(label),
              ),
            ),
          ),
        );
      },
    );
  }
}
