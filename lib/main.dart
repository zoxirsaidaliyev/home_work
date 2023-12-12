import 'package:flutter/material.dart';
import 'package:home_work/screens/arg.dart';
import 'package:home_work/screens/arg2.dart';
import 'package:home_work/screens/end.dart';
import 'package:home_work/screens/hello.dart';
import 'package:home_work/screens/kirish.dart';
import 'package:home_work/screens/register.dart';
import 'package:home_work/screens/shoppers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '1',
      routes: {
        '1': (context) => FirstPage(),
        '2': (context) => RegisterPage(),
        '3': (context) => ShopPage(),
        '4': (context) => ArgPage(),
        '5': (context) => Arg2Page(),
        '6': (context) => HelloPage(),
        '7': (context) => EndPage(),
      },
    );
  }
}
