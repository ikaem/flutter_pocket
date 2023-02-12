void throwRangeError() {
  final characters = ' abcdefghijklmnopqrstuvwxyz!';
  final data = [4, 1, 18, 20, 0, 9, 19, 0, 6, 21, 14, 27];
  final buffer = StringBuffer();
  for (final index in data) {
    final letter = characters[index];
    buffer.write(letter);
  }
  print(buffer);
}
