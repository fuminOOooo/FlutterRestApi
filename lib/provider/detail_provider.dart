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

  Future<void> playCry() async {
    final AudioPlayer player = AudioPlayer();
    final AudioSource source = AudioSource.uri(Uri.parse(getCurrentItemCry()));
    await player.setAudioSource(source);
    await player.play();
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
      print(currentItem!.cries.latest);
      return currentItem!.cries.latest;
    }
  }
}
