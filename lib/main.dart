import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/view.dart';
import 'viewmodel/view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeViewModel(),
            builder: (context, child) => const HomeView(),
          ),
        ],
      ),
    );
  }
}
