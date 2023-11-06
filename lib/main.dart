import 'package:flutter/material.dart';
import 'package:travelesque/pages/detail_page.dart';
import 'package:travelesque/pages/navpages/main_page.dart';
import 'package:travelesque/pages/welcome_page.dart';
import 'package:travelesque/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
