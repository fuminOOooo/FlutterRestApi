part of 'view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});
  final String title;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).getItemsViaOffset();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context, listen: true);

    appBar() {
      return AppBar(
        title: Text(widget.title),
      );
    }

    grid() {
      return GridView.count(
          crossAxisCount: Constant.gridColumnCount,
          children: List.generate(homeProvider.itemCount, (index) {
            int itemIndex = homeProvider.getItemEntryNumber(index);
            return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder()),
                onPressed: () {
                  Navigator.push(
                      context, Approute().detailViewRoute(itemIndex));
                },
                child: GridCellView(
                  entryNumber: itemIndex,
                  oneItem: homeProvider.showedItems[index],
                ));
          }));
    }

    pagination() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.small(
            heroTag: Constant.decreaseOffsetButton,
            onPressed: homeProvider.decreaseOffset,
            child: const Text(Constant.decreaseOffsetButton),
          ),
          horizontalDefaultPadding(Text(
              style: Constant.boldedText,
              '${homeProvider.currentOffset} - ${homeProvider.currentOffset + 10}')),
          FloatingActionButton.small(
            heroTag: Constant.increaseOffsetButton,
            onPressed: homeProvider.increaseOffset,
            child: const Text(Constant.increaseOffsetButton),
          ),
        ],
      );
    }

    return Scaffold(
        appBar: appBar(),
        body: SafeArea(
            child: Center(
                child: Stack(
          children: [
            grid(),
            Column(
              children: [const Spacer(), pagination()],
            )
          ],
        ))));
  }
}
