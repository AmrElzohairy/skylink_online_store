import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/routing/go_router.dart';

void main() {
  runApp(const RikaStore());
}

class RikaStore extends StatelessWidget {
  const RikaStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (_, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Rika Store',
            routerConfig: router,
          ),
    );
  }
}
