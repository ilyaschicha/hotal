import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/dashboard.dart';
import 'package:hotelbooking/pages/detail.dart';
import 'package:hotelbooking/pages/detail2.dart';
import 'package:hotelbooking/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/dash": (context) => const Dashboard(),
        "/archipel": (context) => const Detail(),
        "/finika": (context) => const Detail2(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }
}
