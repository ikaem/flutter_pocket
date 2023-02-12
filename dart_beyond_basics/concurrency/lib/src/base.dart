void delayATaskExecution() {
  print("first");
  Future.delayed(
      Duration(seconds: 2), () => print("second: after delay this is run"));
  print("third");

  /* 
  
  $ dart bin/main.dart 
first
third
second: after delay this is run
  
   */
}

Future<void> runSyncTaskAfterEventLoopTask() async {
  print("first");
  Future(() => print("second")).then((value) => print("third"));

  print("fourth");

  /* 
  
  first
fourth
second
third
   */
}

Future<void> addTaskToEventQueue() async {
  print("first");
  Future(() => print("second"));
  print("third");
  /* 
  
  first
third 
second
  
   */
}

Future<void> addMicroTaskToEventQueue() async {
  print("first");
  Future(() => print("second"));
  Future.microtask(() => print("third"));
  print("fourth");
  /* 
first
fourth
third 
second
  
   */
}
