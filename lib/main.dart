import 'package:flutter/material.dart';

import 'views/one_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'API fetch with DIO',
      home: OnePage(),
    );
  }
}
