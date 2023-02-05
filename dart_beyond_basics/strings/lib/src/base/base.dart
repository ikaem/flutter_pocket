void replaceIt() {
  const String phrase = "this is some text with spaces";
  final String phraseWithUnderscores = phrase.replaceAll(" ", "->");
  print(phraseWithUnderscores);
}

void trimIt() {
  const String offString = "  text  ";
  print(offString.trimLeft());
  print(offString.trimRight());
  print(offString.trim());
}

void padIt() {
  _naiveTimeSting();
}

void _naiveTimeSting() {
  // note here that duraction can be very specific, and combined
  final time = Duration(hours: 1, minutes: 1, seconds: 14);
  // note here that we can get time segments from duration too
  final hours = time.inHours;
  // note that this .inMinutes will return all minutes. but we can modulo it with 60, to get just remained minutes
  // final minutes = time.inMinutes % 60;
  final minutes = "${time.inMinutes % 60}".padLeft(2, "0");
  // final seconds = time.inSeconds % 60;
  final seconds = "${time.inSeconds % 60}".padLeft(2, "0");

  print("$hours:$minutes:$seconds");
}
