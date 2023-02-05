void buildStringWithStringBuffer() {
  final StringBuffer buffer = StringBuffer();
  buffer.write("first part ");
  buffer.write("second part ");
  buffer.write("third part ");
  buffer.write("fourth part ");

  print(buffer.toString());
  // toString is called by print automatically
  print(buffer);
}
