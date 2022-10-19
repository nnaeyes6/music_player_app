import 'package:flutter/material.dart';
import 'package:music_app/presentation/views/collections_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const CollectionsPage(),
    );
  }
}
