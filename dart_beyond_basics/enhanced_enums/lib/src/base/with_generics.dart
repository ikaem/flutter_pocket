// this is regualr enums
enum Size {
  small(1),
  medium(5),
  large(19);

  const Size(this.value);

  final int value;
}

// this is a generirc enum - note that each field is different type - so generic type is speciffied for each message
enum DefaultEnum<T extends Object> {
  font<String>("roboto"),
  size<double>(11.0),
  weight<int>(400);

  const DefaultEnum(this.value);
  // note that type of value here is T - to make possible to assign type to fields
  final T value;
}
