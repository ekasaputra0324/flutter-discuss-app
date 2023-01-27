import 'dart:ffi';

import 'package:discuss_app/config/app_color.dart';
import 'package:discuss_app/config/app_router.dart';
import 'package:flutter/material.dart';
import 'config/app_router.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColor.primary,
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColor.primary
        ),
      ), 
     routerConfig: AppRoute.routerConfig,
    );
  }
}

