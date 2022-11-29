class UserInput {
  const UserInput({
    required this.angle,
    required this.xOffset,
    required this.yOffset,
  });

  final int angle;
  final int xOffset;
  final int yOffset;

  @override
  String toString() {
    return 'UserInput(angle: $angle, xOffset: $xOffset, yOffset:  $yOffset)';
  }
}
