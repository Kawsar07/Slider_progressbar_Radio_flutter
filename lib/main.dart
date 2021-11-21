import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progredd/bootom.dart';

void main (){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (cnx){
        return RadioPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProgreesBar'),
      ),
      body: Center(
child: Stack(
  children: [
    Image.asset('assets/cpc-logo.png'),
    Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.red),
        strokeWidth: 40,
backgroundColor: Colors.orangeAccent,
      ),
    )
  ],
),
      ),
    );
  }
}
