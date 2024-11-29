part of 'view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, this.title});
  final String? title;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeViewModel>(context, listen: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context, listen: true);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halo"),
            Text("Ini ada angka : ${homeViewModel.counter}"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: homeViewModel.decrementCounter,
                        child: const Text("-"),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: homeViewModel.incrementCounter,
                        child: const Text("+"),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
