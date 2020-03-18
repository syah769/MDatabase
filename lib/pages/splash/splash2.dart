import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sains/pages/Home.dart';
import 'package:sains/pages/boarding/boarding.dart';
import 'package:sains/pages/boarding/settings.dart';

import '../Home.dart';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, checkFirstSeen);
  }

Future checkFirstSeen() async {
    const key = 'seen';
    final settings = await ISettings.create();
    bool _seen = (settings.getBool(key, false));

    if (_seen) {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(
          builder: (context) => new FitnessAppHomeScreen()));
    } else {
      settings.setBool(key, true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Boarding()));
    }
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        //Here you can set what ever background color you need.
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[Image.asset('assets/mlearning.png')],
          ),
        ),
      );
  }
}
