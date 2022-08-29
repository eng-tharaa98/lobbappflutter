import 'package:applobb/route_generator.dart';
import 'package:flutter/material.dart';

import 'screen/mobile_screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'DM Sans',
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 16.0, color: Color(0xFF8987A3), height: 1.35),),
        shadowColor: Color(0xFF2E26D6),
        backgroundColor: const Color(0xFF110F2F),
        primarySwatch: Colors.blue,
      ),
      home: const MobileScreenOne(),
    );
  }
}



