import 'package:flutter/material.dart';
// import 'package:sains/level.dart';
import 'package:sains/pages/Home1.dart';
import 'package:sains/theme/sainsAppTheme.dart';
// import 'package:sains/pages/kuiz/second.dart';

class Result1 extends StatefulWidget {
  int marks;
  Result1({@required this.marks});
  @override
  _Result1State createState() => _Result1State(marks);
}

class _Result1State extends State<Result1> {
  List<String> images = [
    "assets/result/success.png",
    "assets/result/good.png",
    "assets/result/loss.png",
  ];

  double topBarOpacity = 0.0;

  String message;
  String image;

  @override
  void initState() {
    if (marks < 10) {
      image = images[2];
      message = "Perlukan latihan lagi\n" + "Skor anda $marks";
    } else if (marks < 15) {
      image = images[1];
      message = "Teruskan berusaha\n" + "Skor anda $marks";
    } else {
      image = images[0];
      message = "Cemerlang\n" + "Skor anda $marks";
    }
    super.initState();
  }

  int marks;
  _Result1State(this.marks);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            getAppBarUI(),
            Expanded(
              flex: 7,
              child: Material(
                elevation: 10.0,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: Container(
                          width: 300.0,
                          height: 300.0,
                          child: ClipRect(
                            child: Image(
                              image: AssetImage(
                                image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => FitnessAppHomeScreen1(),
                      ));
                    },
                    child: Text(
                      "Teruskan",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    borderSide: BorderSide(width: 5.0, color: Colors.indigo),
                    splashColor: Colors.indigo,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: FintnessAppTheme.white.withOpacity(topBarOpacity),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: FintnessAppTheme.grey.withOpacity(0.4 * topBarOpacity),
                  offset: Offset(1.1, 1.1),
                  blurRadius: 10.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16 - 8.0 * topBarOpacity,
                    bottom: 12 - 8.0 * topBarOpacity),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          "Skor",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: FintnessAppTheme.fontName,
                            fontWeight: FontWeight.w700,
                            fontSize: 22 + 6 - 6 * topBarOpacity,
                            letterSpacing: 1.2,
                            color: FintnessAppTheme.darkerText,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
