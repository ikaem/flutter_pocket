import 'dart:io';

Future<void> readFileAsString() async {
  final file = File('assets/text.txt');

  final contents = await file.readAsString();

  print(contents);

/*   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
labore et dolore magna
aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. */
}

void readFileAsStream() {
  final file = File('assets/bigger_text.txt');

  final stream = file.openRead();

  // here we pass on data handlers and so on
  stream.asBroadcastStream();

  stream.listen((event) {
    final values = event;

    // print('values: $values');
    print('values length: ${values.length}');

    /* 
    this is number of ele,ents in achunk
    - so number of bytes in a chink

values length: 65536
values length: 65536
values length: 38474
    
     */
  });
}
