import 'package:designs/src/screens/basic_design.dart';
import 'package:designs/src/screens/compouse_design.dart';
import 'package:designs/src/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'compouse_design',
        routes: {
          'basic_design': (_)=> const BasicDesignScreen(),
          'scroll_design': (_)=> const ScrollScreen(),
          'compouse_design': (_)=> const CompouseScreen()
        },
      );
  }
}
