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

    image() {
      return verticalDefaultPadding(
        Image.network(
          scale: Constant.imageScaleMultiplier,
          gifImageWholeUrl(detailProvider.currentItemIndex))
      );
    }

    stats() {
      if (detailProvider.isLoading) {
        return const CircularProgressIndicator();
      } else {
        return Column(
          children: [
            Text(
                style: Constant.bigBoldedText,
                detailProvider.getCurrentItemName().toUpperCase())
          ],
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [image(), stats()],
      ))),
    );
  }
}
