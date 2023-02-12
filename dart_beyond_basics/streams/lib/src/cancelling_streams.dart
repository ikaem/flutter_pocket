import 'dart:async';
import 'dart:developer';
import 'dart:io';

void cancelStreamSubscriptionOnFirstEvent() {
  final file = File('assets/bigger_text.txt');
  final stream = file.openRead();

  /* now we declare subscription */
  StreamSubscription<List<int>>? subscription;

  subscription = stream.listen(
    (data) {
      log('This is first data: ${data.length}');
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () => log('done!'),
  );

  // [log] This is first data: 65536
}
