import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/SplashScreen.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Provider<GlobalKey<ScaffoldState>>.value(
      value: _scaffoldKey,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplashScreen',
      theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff1C1C1C)),
          useMaterial3: true,
          primarySwatch: Colors.lightBlue,
          primaryTextTheme:
              const TextTheme(headlineMedium: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
