import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/cache/cache_helper.dart';
import 'package:rika_online_store/core/routing/go_router.dart';
import 'package:rika_online_store/core/utils/custom_bloc_observer.dart';
import 'package:rika_online_store/core/utils/service_locator.dart';
import 'package:rika_online_store/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await CacheHelper.init();
  Bloc.observer = CustomBlocObserver();
  setupDependencies();
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
