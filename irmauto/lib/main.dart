import 'package:flutter/material.dart';
import 'package:irmauto/loginpage.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IRM AUTO',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Iphone14OneScreen(),
    );
  }
}

class Iphone14OneScreen extends StatefulWidget {
  @override
  _Iphone14OneScreenState createState() => _Iphone14OneScreenState();
}

class _Iphone14OneScreenState extends State<Iphone14OneScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), navigateToLoginPage);
  }

  void navigateToLoginPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 5, 5),
        title: Image.asset('assets/IRM.png', fit: BoxFit.cover),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 280, 25, 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "IRM-",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: "Auto",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 36,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        height: 50.0,
        color: Colors.black,
        child: Text(
          "® IRM-Auto 2023 |All rights reserved | Powered by IronHoster Inc.",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}