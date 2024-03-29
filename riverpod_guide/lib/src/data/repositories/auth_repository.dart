import 'dart:async';

class AuthRepository {
  AuthRepository() {
    _controller = StreamController<String>()..add("test");
  }

  // final StreamController<String> _controller = StreamController<String>();
  late final StreamController<String> _controller;

  Stream<String> get authStream => _controller.stream;

  Future<void> singInAnonymously() async {
    _controller.add("anonymous user");
  }

// possibly no need to close? because stream provider might do it?
  void dispose() {
    _controller.close();
  }
}
