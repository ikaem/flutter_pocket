enum EnhancedWeekdayEnum {
  monday("work day 1"),
  tuesday("work day 2"),
  wednesday("work day 3"),
  thursday("work day 4"),
  friday("work day 5"),
  saturday("no work 1"),
  sunday("no work 2");

  const EnhancedWeekdayEnum(this.message);
  final String message;
}
