import 'package:flutter/material.dart';
import 'package:rika_online_store/core/routing/go_router.dart';

void main() {
  runApp(const RikaStore());
}

class RikaStore extends StatelessWidget {
  const RikaStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rika Store',
      theme: ThemeData(),
      routerConfig: router,
    );
  }
}
