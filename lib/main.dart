import 'package:flutter/material.dart';

void main() {
  runApp(const RikaStore());
}

class RikaStore extends StatelessWidget {
  const RikaStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rika Store',
      theme: ThemeData(),
      home: const Scaffold(),
    );
  }
}
