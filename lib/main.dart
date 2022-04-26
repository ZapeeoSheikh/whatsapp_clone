import 'package:flutter/material.dart';
import 'package:whatsapp_clone/UI%20Colors/AppColor.dart';
import 'package:whatsapp_clone/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: AppColor.header,
        backgroundColor: AppColor.header,
        canvasColor: AppColor.header,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
