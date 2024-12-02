part of 'provider.dart';

class DetailProvider with ChangeNotifier {
  int currentItemIndex;
  bool isLoading = false;
  DetailProvider({required this.currentItemIndex});
  OneDataModel? currentItem;

  getItemViaIndex() async {
    isLoading = true;
    OneDataModel result = await ApiService().callOneDataApi(currentItemIndex);
    currentItem = result;
    isLoading = false;
    notifyListeners();
  }

  String getCurrentItemName() {
    if (currentItem == null) {
      return '';
    } else {
      return currentItem!.species.name;
    }
  }
}
