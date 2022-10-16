extension IntExtension on int {
  Duration convertToDuration() {
    return Duration(milliseconds: this);
  }
}
