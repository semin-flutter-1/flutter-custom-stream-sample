import 'dart:async';

class Counter {
  int _counter = 0;

  final _counterStreamController = StreamController<int>()..add(0);

  Stream<int> get counterStream => _counterStreamController.stream;

  void increase() {
    _counter++;
    _counterStreamController.add(_counter);
  }

}