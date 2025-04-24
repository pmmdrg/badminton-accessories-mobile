import 'package:badminton_accessories_shop/app.dart';
import 'package:badminton_accessories_shop/configs/theme_provider.dart';
import 'package:badminton_accessories_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (context, child) => ChangeNotifierProvider(
            create: (context) => ThemeProvider(),
            child: const MyApp(),
          ),
    ),
  );
}
