import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suptechno2023tp1/home_page.dart';
import 'package:suptechno2023tp1/my_app_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 34, 255, 60)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
