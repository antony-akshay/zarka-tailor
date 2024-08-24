import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sewcode/screens/tailorHome/tailorHome.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 812),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: tailorHome()),
    );
  }
}
