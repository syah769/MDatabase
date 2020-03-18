import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sains/pages/kuiz/tahap/senang1.dart';
import 'package:sains/pages/kuiz/tahap/senang10.dart';
import 'package:sains/pages/kuiz/tahap/senang2.dart';
import 'package:sains/pages/kuiz/tahap/senang3.dart';
import 'package:sains/pages/kuiz/tahap/senang4.dart';
import 'package:sains/pages/kuiz/tahap/senang5.dart';
import 'package:sains/pages/kuiz/tahap/senang6.dart';
import 'package:sains/pages/kuiz/tahap/senang7.dart';
import 'package:sains/pages/kuiz/tahap/senang8.dart';
import 'package:sains/pages/kuiz/tahap/senang9.dart';
import 'package:sains/pages/kuiz/tahap/susah1.dart';
import 'package:sains/pages/kuiz/tahap/susah10.dart';
import 'package:sains/pages/kuiz/tahap/susah2.dart';
import 'package:sains/pages/kuiz/tahap/susah3.dart';
import 'package:sains/pages/kuiz/tahap/susah4.dart';
import 'package:sains/pages/kuiz/tahap/susah5.dart';
import 'package:sains/pages/kuiz/tahap/susah6.dart';
import 'package:sains/pages/kuiz/tahap/susah7.dart';
import 'package:sains/pages/kuiz/tahap/susah8.dart';
import 'package:sains/pages/kuiz/tahap/susah9.dart';
import 'package:sains/theme/designCourseAppTheme.dart';

class DesignCourseHomeScreen1 extends StatefulWidget {
  @override
  _DesignCourseHomeScreen1State createState() => _DesignCourseHomeScreen1State();
}

class _DesignCourseHomeScreen1State extends State<DesignCourseHomeScreen1>
    with TickerProviderStateMixin {
  Animation animation, delayedAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: animationController));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return WillPopScope(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
              getAppBarUI(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                       
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: Transform(
                          transform: Matrix4.translationValues(
                              animation.value * width, 0.0, 0.0),
                          child: GridView.count(
                            physics: BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  _showQuizDialog1();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/scared.png'),
                                          fit: BoxFit.fitHeight),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 1"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                               onTap: () {
                                  _showQuizDialog2();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/breathe.png'),
                                          fit: BoxFit.fitHeight),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 2"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog3();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/blood.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 3"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog4();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/metal.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 4"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog5();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/thermometer.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 5"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog6();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/solar.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 6"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog7();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/gravity.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 7"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog8();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/fusion.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 8"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog9();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/orbit.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 9"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _showQuizDialog10();
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/gps.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        child: Text("Bab 10"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          onWillPop: () => showDialog<bool>(
            context: context,
             builder: (c) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          title: Text('Exit'),
          content: Text('Sure?'),
          actions: [
            FlatButton(
              child: Text(
                'No',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.pop(c, false),
            ),
            FlatButton(
              child: Text(
                'Yes',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => SystemNavigator.pop(),
            ),
          ],
        ),
          ),
        );
      },
    );
  }

  Widget getAppBarUI() {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Transform(
                  transform: Matrix4.translationValues(
                      animation.value * width, 0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Kuiz",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 0.27,
                          color: DesignCourseAppTheme.darkerText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(
                    animation.value * width, 0.0, 0.0),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/icons/quiz.png'),
                ),
              )
            ],
          ),
        );
      },
    );
  }

Future<void> _showQuizDialog1() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang1(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => Susah1()));
    }
  }

  Future<void> _showQuizDialog2() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang2(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah2()));
    }
  }

   Future<void> _showQuizDialog3() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang3(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah3()));
    }
  }

  Future<void> _showQuizDialog4() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang4(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah4()));
    }
  }

  Future<void> _showQuizDialog5() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang5(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah5()));
    }
  }

  Future<void> _showQuizDialog6() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang6(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah6()));
    }
  }

  Future<void> _showQuizDialog7() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang7(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah7()));
    }
  }

  Future<void> _showQuizDialog8() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang8(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah8()));
    }
  }

  Future<void> _showQuizDialog9() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang9(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah9()));
    }
  }

   Future<void> _showQuizDialog10() async {
    switch (await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            title: Text("Tahap soalan"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.pinkAccent[100])),
                  child: Padding(
                    child: Text('Senang'),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.pinkAccent[100]),
                  ),
                  child: Padding(
                    child: Text("Susah"),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ],
          );
        })) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Senang10(
                  weapon: "senang",
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => Susah10()));
    }
  }

  










}
