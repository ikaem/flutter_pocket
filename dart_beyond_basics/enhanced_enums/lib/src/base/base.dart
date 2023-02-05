void handleDay(BasicWeatherEnum day) {
  switch (day) {
    case BasicWeatherEnum.monday:
      print(day.name);
      break;
    case BasicWeatherEnum.tuesday:
      print(day.name);

      break;
    case BasicWeatherEnum.wednesday:
      print(day.name);

      break;
    case BasicWeatherEnum.thursday:
      print(day.name);

      break;
    case BasicWeatherEnum.friday:
      print(day.name);

      break;
    case BasicWeatherEnum.saturday:
      print(day.name);

      break;
    case BasicWeatherEnum.sunday:
      print(day.name);

      break;
  }
}

enum BasicWeatherEnum {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}
