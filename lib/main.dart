  import 'package:flutter/material.dart';
  import 'package:test_app/Pages/Login_page.dart';
  import 'dart:async';

  void main() {
    runApp(MaterialApp(
      home: MyApp(),
    ));
  }

  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {

    @override
    void initState() {
      super.initState();
      Future.delayed(Duration(
          seconds: 10),
            () {
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage(),),);
        },
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: FlutterLogo(
            size: 400,
          ),
        ),
      );
    }
  }



