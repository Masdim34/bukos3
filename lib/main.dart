// ignore_for_file: unused_element

import 'package:bukos3/login.dart';
import 'package:bukos3/payment.dart';
import 'package:bukos3/pdata.dart';

// ignore: unused_import
import 'package:bukos3/room.dart';
import 'package:bukos3/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

const TextStyle myTextStyle = TextStyle(
  color: Color(0xff646464),
  fontFamily: 'Roboto', // Replace 'MyCustomFont' with your custom font family
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bukos',

      theme: ThemeData(primaryColor: _maincolor),
      home: const Login(),

      //pindah//
    );
  }
}
