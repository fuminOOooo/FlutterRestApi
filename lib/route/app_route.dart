part of '../route/route.dart';

class RouteBase extends MaterialPageRoute {
  RouteBase({required super.builder});
}

class Approute {
  MaterialPageRoute get homeViewRoute {
    return RouteBase(builder: (BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) {
          return HomeViewModel();
        },
        builder: (context, child) {
          return const HomeView(title: "woii",);
        },
      );
    });
  }
}
