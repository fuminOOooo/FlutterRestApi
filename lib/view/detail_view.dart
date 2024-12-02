part of 'view.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});
  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<DetailProvider>(context, listen: false).getItemViaIndex();
    });
  }

  @override
  Widget build(BuildContext context) {
    final detailProvider = Provider.of<DetailProvider>(context, listen: true);

    appBar() {
      return AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
            style: Constant.bigBoldedText,
            detailProvider.getCurrentItemName().toUpperCase()),
      );
    }

    image() {
      return verticalDefaultPadding(Image.network(
          scale: Constant.imageScaleMultiplier,
          gifImageWholeUrl(detailProvider.currentItemIndex)));
    }

    stats() {
      if (detailProvider.isLoading) {
        return const CircularProgressIndicator();
      } else {
        return const Column(
          children: [],
        );
      }
    }

    cryButton() {
      return FloatingActionButton.small(
          onPressed: () {
            detailProvider.playCry();
          },
          child: verticalDefaultPadding(Image.asset(ImageAssets.playSound)));
    }

    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [image(), stats(), cryButton()],
      ))),
    );
  }
}
