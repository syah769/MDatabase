import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sains/pages/argumented/ar1.dart';
import 'package:sains/theme/designCourseAppTheme.dart';

class AR extends StatefulWidget {
  @override
  _ARState createState() => _ARState();
}

class _ARState extends State<AR> with TickerProviderStateMixin {
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
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              getAppBarUI(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: AR1(),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
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
  }

  Widget getAppBarUI() {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 0.9,
            left: 18,
            right: 18,
          ),
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
                        "Quiz",
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
            
            ],
          ),
        );
      },
    );
  }
}
