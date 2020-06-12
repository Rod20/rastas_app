import 'package:rxdart/rxdart.dart';

class TabBloc {

  // Control the tab indexes
  BehaviorSubject<int> _currentIndexController = new BehaviorSubject<int>();

  // Stream
  Stream<int> get currentIndexStream => _currentIndexController.stream;

  //Inputs
  Function(int) get changeCurrentIndex => _currentIndexController.sink.add;

  //Values
  int get currentIndex => _currentIndexController.value;

  dispose() {
    _currentIndexController?.close();
  }
}