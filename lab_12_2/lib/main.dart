import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab_12_2/get_screen.dart';
import 'package:lab_12_2/save_screen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/save': (context) => SaveScreen(),
        '/get': (context) => Scaffold(body: GetScreen()),
      },
      home: Scaffold(body: SaveScreen()),
    );
  }
}