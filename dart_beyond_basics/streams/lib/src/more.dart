import 'dart:async';
import 'dart:convert';
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

Future<void> transformStream() async {
  final file = File('assets/text.txt');

  final byteStream = file.openRead();
  // this is now string stream
  final stringStream = byteStream.transform(utf8.decoder);

  await for (final String data in stringStream) {
    print(data);
  }
}
