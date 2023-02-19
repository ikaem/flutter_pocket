Future<String> countToALotAsync() async {
  var counter = 0;

  await Future(() {
    for (var i = 1; i < 1000000000000; i++) {
      counter = i;
    }
  });
  final result = '$counter! Finished!';

  print(result);
  return result;
}

String countToALotSync() {
  var counter = 0;

  for (var i = 1; i < 1000000000000; i++) {
    counter = i;
  }

  final result = '$counter! Finished!';

  print(result);
  return result;
}
