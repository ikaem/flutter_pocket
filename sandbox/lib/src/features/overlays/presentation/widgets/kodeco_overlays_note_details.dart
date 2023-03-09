import 'package:flutter/material.dart';
import 'package:sandbox/src/features/overlays/utils/mixins/overlay_state_mixin.dart';

class KodecoOverlaysNoteDetails extends StatefulWidget {
  const KodecoOverlaysNoteDetails({
    super.key,
    required this.onDetailsClose,
  });

  final VoidCallback onDetailsClose;

  @override
  State<KodecoOverlaysNoteDetails> createState() =>
      _KodecoOverlaysNoteDetailsState();
}

class _KodecoOverlaysNoteDetailsState extends State<KodecoOverlaysNoteDetails>
    with OverlayStateMixin<KodecoOverlaysNoteDetails> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Just note details here",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 64,
          ),
          ElevatedButton(
            onPressed: widget.onDetailsClose,
            child: const Text("Close"),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _onConfirmCloseOverlay,
            child: const Text("Confirm and close"),
          ),
        ],
      ),
    );
  }

  void _onConfirmCloseOverlay() {
    toggleOverlay(
      _ConfirmCloseDetails(
        onCloseConfirm: widget.onDetailsClose,
        onCloseCancel: removeOverlay,
      ),
    );
  }
}

class _ConfirmCloseDetails extends StatelessWidget {
  const _ConfirmCloseDetails({
    required this.onCloseConfirm,
    required this.onCloseCancel,
  });

  final VoidCallback onCloseConfirm;
  final VoidCallback onCloseCancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: onCloseConfirm, child: const Text("Close")),
            const SizedBox(
              width: 8,
            ),
            TextButton(onPressed: onCloseCancel, child: const Text("Cancel")),
          ],
        ),
      ),
    );
  }
}
