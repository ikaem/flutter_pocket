import 'dart:developer';

void addDays() {
  final Day day = Day.friday;

  print(day + 3);
}

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  Day operator +(int days) {
    final int numberOfItems = Day.values.length;

// note that index is current value
    final int currentIndex = this.index;
    log(currentIndex.toString());

    final int addedIndex = (currentIndex + days) % numberOfItems;

    return Day.values[addedIndex];
  }
}
