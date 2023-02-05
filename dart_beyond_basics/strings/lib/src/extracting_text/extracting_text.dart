final textInMultilineQuotes = """
    <!DOCTYPE html>
    <html>
      <body>
        <h1>Dart Tutorial</h1>
        <p>Dart is my favorite language.</p>
        <h1>Go Tutorial</h1>
        <p>Dart is my favorite language.</p>
        <h1>JS Tutorial</h1>
        <p>Dart is my favorite language.</p>
      </body>
    </html>
  """;

void extractTextWithSubstring() {}
void extractTextWithRegExpGroups() {
  final RegExp headingsPattern = RegExp(r"<h1>(.+)</h1>");

  final Iterable<RegExpMatch> matches =
      headingsPattern.allMatches(textInMultilineQuotes);

  for (final match in matches) {
    // todo GROUPD 1 means teturn us some match inside the regexp
    print(match.group(1)); // Dart Tutorial
    print(match.group(0)); // <h1>Dart Tutorial</h1>
  }
}
