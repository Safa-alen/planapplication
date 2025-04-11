import 'package:flutter/material.dart';
import 'package:planapp/constant.dart';
import 'package:planapp/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plan App',
      theme: ThemeData(
        scaffoldBackgroundColor: KBsckgroundColor,
       primaryColor: KPrimaryColor,
       textTheme: Theme.of(context).textTheme.apply(bodyColor: KTextColor),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

