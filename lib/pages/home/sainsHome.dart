// import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
// import 'package:sains/pages/argumented/unity.dart';
import 'package:sains/pages/home/bab/bab1.dart';
import 'package:sains/pages/home/bab/bab2.dart';
import 'package:sains/pages/home/bab/bab3.dart';
import 'package:sains/pages/home/bab/bab4.dart';
import 'package:sains/pages/home/bab/bab5.dart';
// import 'package:sains/pages/home/bab/bab6.dart';

import 'package:sains/theme/designCourseAppTheme.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen>
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab1()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/backup.png'),
                                          fit: BoxFit.fitHeight),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 65),
                                        child: Text("Chapter 1"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab2()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/model.png'),
                                          fit: BoxFit.fitHeight),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 63),
                                        child: Text("Chapter 2"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab3()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/modelling.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 63),
                                        child: Text("Chapter 3"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab4()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/sql.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 63),
                                        child: Text("Chapter 4"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab5()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/transaction.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 63),
                                        child: Text("Chapter 5"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) => Vuforia()));
                              //   },
                              //   child: Card(
                              //     color: Colors.transparent,
                              //     elevation: 0,
                              //     child: Container(
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(20),
                              //         image: DecorationImage(
                              //             image: AssetImage(
                              //                 'assets/iconbab/solar.png'),
                              //             fit: BoxFit.cover),
                              //       ),
                              //       child: Transform.translate(
                              //         offset: Offset(50, -50),
                              //         child: Container(
                              //           margin: EdgeInsets.symmetric(
                              //               horizontal: 40, vertical: 63),
                              //           child: Text("Extra Note"),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
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
                        "Notes",
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
              // Transform(
              //   transform: Matrix4.translationValues(
              //       animation.value * width, 0.0, 0.0),
              //   child: Container(
              //     width: 60,
              //     height: 60,
              //     child: Image.asset('assets/icons/teacher.jpg'),
              //   ),
              // )
            ],
          ),
        );
      },
    );
  }
}
