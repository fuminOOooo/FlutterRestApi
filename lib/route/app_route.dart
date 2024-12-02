part of '../route/route.dart';

class RouteBase extends MaterialPageRoute {
  RouteBase({required super.builder});
}

class Approute {
  MaterialPageRoute get homeViewRoute {
    return RouteBase(builder: (BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) => const HomeView(title: Constant.appName),
      );
    });
  }
  MaterialPageRoute detailViewRoute(int itemIndex) {
    return RouteBase(builder: (BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => DetailProvider(currentItemIndex: itemIndex),
        builder: (context, child) => const DetailView(),
      );
    });
  }
}
