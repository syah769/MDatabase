import 'package:flutter/material.dart';
import 'package:sains/main.dart';
// import 'package:sains/pages/argumented/epidermis.dart';
// import 'package:sains/pages/argumented/camera.dart';
import 'package:sains/pages/kuiz/kuiz1/kuiz1.dart';
import 'package:sains/pages/kuiz/kuiz2/kuiz2senang.dart';
import 'package:sains/pages/kuiz/kuiz3/kuiz3senang.dart';

import 'package:sains/theme/designCourseAppTheme.dart';

class AR1 extends StatefulWidget {
  @override
  _AR1State createState() => _AR1State();
}

class _AR1State extends State<AR1> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  var opacity1 = 0.0;
  var opacity2 = 0.0;
  var opacity3 = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  void setData() async {
    animationController.forward();
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      alignment: Alignment.center,
      scale: new CurvedAnimation(
          parent: animationController, curve: Curves.fastOutSlowIn),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SizedBox();
            } else {
              return GridView(
                  padding: EdgeInsets.all(8),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Json()));
                      },
                      child: SizedBox(
                        height: 280,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: HexColor("#F8FAFB"),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16.0)),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16,
                                                            left: 16,
                                                            right: 16),
                                                    child: Text(
                                                      "Quiz 1",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        letterSpacing: 0.27,
                                                        color:
                                                            DesignCourseAppTheme
                                                                .darkerText,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8,
                                                            left: 16,
                                                            right: 16,
                                                            bottom: 8),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          "5 Questions",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            fontSize: 12,
                                                            letterSpacing: 0.27,
                                                            color:
                                                                DesignCourseAppTheme
                                                                    .grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // SizedBox(
                                          //   width: 48,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, right: 16, left: 16, bottom: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: DesignCourseAppTheme.grey
                                              .withOpacity(0.2),
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 6.0),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                      aspectRatio: 1.28,
                                      child: Image.asset(
                                          "assets/design_course/interFace1.png"),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => JsonEasy2()));
                      },
                      child: SizedBox(
                        height: 280,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: HexColor("#F8FAFB"),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16.0)),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16,
                                                            left: 16,
                                                            right: 16),
                                                    child: Text(
                                                      "Quiz 2",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        letterSpacing: 0.27,
                                                        color:
                                                            DesignCourseAppTheme
                                                                .darkerText,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8,
                                                            left: 16,
                                                            right: 16,
                                                            bottom: 8),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          "5 Questions",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            fontSize: 12,
                                                            letterSpacing: 0.27,
                                                            color:
                                                                DesignCourseAppTheme
                                                                    .grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // SizedBox(
                                          //   width: 48,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, right: 16, left: 16, bottom: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: DesignCourseAppTheme.grey
                                              .withOpacity(0.2),
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 6.0),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                      aspectRatio: 1.28,
                                      child: Image.asset(
                                          "assets/design_course/interFace1.png"),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => JsonEasy3()));
                      },
                      child: SizedBox(
                        height: 280,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: HexColor("#F8FAFB"),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16.0)),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16,
                                                            left: 16,
                                                            right: 16),
                                                    child: Text(
                                                      "Quiz 3",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        letterSpacing: 0.27,
                                                        color:
                                                            DesignCourseAppTheme
                                                                .darkerText,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8,
                                                            left: 16,
                                                            right: 16,
                                                            bottom: 8),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          "5 Questions",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            fontSize: 12,
                                                            letterSpacing: 0.27,
                                                            color:
                                                                DesignCourseAppTheme
                                                                    .grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // SizedBox(
                                          //   width: 48,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, right: 16, left: 16, bottom: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: DesignCourseAppTheme.grey
                                              .withOpacity(0.2),
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 6.0),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                      aspectRatio: 1.28,
                                      child: Image.asset(
                                          "assets/design_course/interFace1.png"),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                  //sini gantian wiget
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 32.0,
                    crossAxisSpacing: 32.0,
                    childAspectRatio: 0.8,
                  ));
            }
          },
        ),
      ),
    );
  }
}
