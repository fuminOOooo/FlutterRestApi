part of 'provider.dart';

class DetailProvider with ChangeNotifier {

  int currentItemIndex;
  bool isLoading = false;
  DetailProvider({required this.currentItemIndex});
  OneDataModel? currentItem;

  playCry() async {
    final AudioPlayer player = AudioPlayer();
    player.setUrl(getCurrentItemCry());
    player.play();
  }

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

  String getCurrentItemCry() {
    if (currentItem == null) {
      return '';
    } else {
      return currentItem!.cries.latest;
    }
  }

}
