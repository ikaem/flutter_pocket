typedef ZipCode = int;
typedef FirstName = String;
typedef Person = Map<String, String>;

typedef FunctionThatReturnsFunctionThatReturnsMap = Map<String, String>
    Function(List<int> integers);

FunctionThatReturnsFunctionThatReturnsMap
    functionThatReturnsFunctionThatReturnsMap() {
  return (List<int> integers) => {"name": "Karlo"};
}

void callFunctionWithTearoff() {
  final StateManager stateManager = StateManager();

  final SomeButton newButton = SomeButton(
    text: "text",
    // this is tearoff
    onPressed: stateManager.handleButtonClick,
    onTouched: (position) {},
    getTimestamp: () => "Hello",
  );
}

class StateManager {
  int _counter = 0;

  void handleButtonClick() {
    _counter++;
  }
}

void triggerButtonOnPressedCallback() {
  button.onPressed();
  // TODO we can call this as well
  button.onPressed.call();
}

final SomeButton button = SomeButton(
  text: "Hello",
  onPressed: () => print("I am pressed"),
  onTouched: (touchXPosition) {
    print("This is where you touched the button");
  },
  getTimestamp: () => DateTime.now().toIso8601String(),
);

class SomeButton {
  const SomeButton({
    required this.text,
    required this.onPressed,
    required this.onTouched,
    required this.getTimestamp,
  });

  final String text;
  final void Function() onPressed;
  final void Function(double touchXPosition) onTouched;
  final String Function()? getTimestamp;
}
