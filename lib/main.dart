import 'package:flutter/material.dart';
import 'package:working/pages/choose_location.dart';
import 'package:working/pages/home.dart';
import 'package:working/pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Lodaing(),
        '/home': (context) => Home(),
        '/choose_location': (context) => ChooseLocation()
      },
    );
  }
}