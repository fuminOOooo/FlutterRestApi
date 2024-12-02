part of 'provider.dart';

class HomeProvider with ChangeNotifier {
  bool isLoading = false;
  int itemCount = 0;
  int totalItems = 0;
  int currentOffset = 0;
  List<ResultModel> showedItems = [];

  increaseOffset() {
    if (currentOffset < totalItems) {
      currentOffset += 10;
      getItemsViaOffset();
    }
  }

  decreaseOffset() {
    if (currentOffset >= 10) {
      currentOffset -= 10;
      getItemsViaOffset();
    }
  }

  getItemsViaOffset() async {
    isLoading = true;
    ApiModel result = await ApiService().callOffsetApi(currentOffset);
    if (itemCount == 0 && totalItems == 0) {
      itemCount = result.results.length;
      totalItems = result.count;
    }
    showedItems = result.results;
    isLoading = false;
    notifyListeners();
  }

  int getItemEntryNumber(int index) {
    return currentOffset + (index + 1);
  }
}
