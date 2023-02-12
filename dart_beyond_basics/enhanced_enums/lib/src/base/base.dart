void handleDay(BasicDayEnum day) {
  switch (day) {
    case BasicDayEnum.monday:
      print(day.name);
      break;
    case BasicDayEnum.tuesday:
      print(day.name);

      break;
    case BasicDayEnum.wednesday:
      print(day.name);

      break;
    case BasicDayEnum.thursday:
      print(day.name);

      break;
    case BasicDayEnum.friday:
      print(day.name);

      break;
    case BasicDayEnum.saturday:
      print(day.name);

      break;
    case BasicDayEnum.sunday:
      print(day.name);

      break;
  }
}

enum BasicDayEnum {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  // we can create getters on enums
  BasicDayEnum get next {
    // this is the current selected day
    return this + 1;
  }

  BasicDayEnum operator +(int days) {
    final int numberOfItems = BasicDayEnum.values.length;

    final int currentIndex = this.index;
    final int addedIndex = (currentIndex + days) % numberOfItems;

    return BasicDayEnum.values[addedIndex];
  }
}
