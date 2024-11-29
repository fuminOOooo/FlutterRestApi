part of 'view_model.dart';

class HomeViewModel with ChangeNotifier {
  bool isInitialized = false;

  setUp(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      isInitialized = true;
      notifyListeners();
    });
  }

  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
