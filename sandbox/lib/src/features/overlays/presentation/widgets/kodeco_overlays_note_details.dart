import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sandbox/src/features/overlays/utils/mixins/overlay_state_mixin.dart';

class KodecoOverlaysNoteDetails extends StatefulWidget {
  const KodecoOverlaysNoteDetails({super.key});

  @override
  State<KodecoOverlaysNoteDetails> createState() =>
      _KodecoOverlaysNoteDetailsState();
}

class _KodecoOverlaysNoteDetailsState extends State<KodecoOverlaysNoteDetails>
    with OverlayStateMixin<KodecoOverlaysNoteDetails> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
