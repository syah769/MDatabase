import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:url_launcher/url_launcher.dart';

final startColor = Color(0xFFaa7ce4);
final endColor = Color(0xFFe46792);
final titleColor = Color(0xff444444);
final textColor = Color(0xFFa9a9a9);
final shadowColor = Color(0xffe9e9f4);

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: 180,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [startColor, endColor])),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Text(
                          "About Us",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            letterSpacing: 0.27,
                            color: DesignCourseAppTheme.darkerText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, right: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: ListView(
                  children: <Widget>[
                    new CardHolder(),
                    SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ),
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
}

class CardHolder extends StatelessWidget {
  const CardHolder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 150, right: 20, left: 20),
      height: 600,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: titleColor.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: 10),
          ]),
      child: new Card(),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/mlearning.png'), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: Colors.blueAccent.withOpacity(.2), width: 1)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "M-Learning Database Design",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
       
        // Row(
        //   mainAxisSize: MainAxisSize.min,
        //   children: <Widget>[
        //     Text(
        //       'BERILMU',
        //       style: TextStyle(color: textColor, fontSize: 15),
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Container(
        //       height: 12,
        //       child: VerticalDivider(
        //         width: 2,
        //         color: Colors.black,
        //       ),
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Text(
        //       'BERAMAL',
        //       style: TextStyle(color: textColor, fontSize: 15),
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Container(
        //       height: 12,
        //       child: VerticalDivider(
        //         width: 2,
        //         color: Colors.black,
        //       ),
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Text(
        //       'BERJIHAD',
        //       style: TextStyle(color: textColor, fontSize: 15),
        //     ),
        //   ],
        // ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          width: 320,
          height: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 30,
                    spreadRadius: 5)
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Developed by",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          letterSpacing: 0.27,
                          color: DesignCourseAppTheme.darkerText,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                     
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[],
                      )
                    ],
                  )
                ],
              ),
              Text(
                'Mohamad Khuzairi Helmi bin Rushidi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Mohamed Ikhwan bin Mohamad Ikbal',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Text(
                'Nur Aqilah binti Mohamad Nor\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Text(
                        "Supervisor",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          letterSpacing: 0.27,
                          color: DesignCourseAppTheme.darkerText,
                        ),
                      ),
                       Text(
                'Zati Hanani binti Zainal\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Text(
                "Objective",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.darkerText,
                ),
              ),
               Text(
                'Provide a tool for student to learn Entity Relational Diagram (ERD)\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
               Text(
                'To display Entity Relationship Diagram using AR\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
               Text(
                "Suggestion",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.darkerText,
                ),
              ),
                GestureDetector(
                        child: Text(
                          'Email us\n',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),
                        ),
                        onTap: () {
                          launch('https://www.google.com');
                        },
                      )
            ],
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Divider(
                height: 1,
                color: titleColor.withOpacity(.3),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                // Material(
                //   borderRadius: BorderRadius.all(Radius.circular(100)),
                //   child: InkWell(
                //     borderRadius: BorderRadius.all(Radius.circular(100)),
                //     onTap: () {},
                //     child: Padding(
                //       padding: const EdgeInsets.all(12),
                //       child: Icon(
                //         Icons.group_work,
                //         color: textColor,
                //         size: 40,
                //       ),
                //     ),
                //   ),
                // ),
                // Column(
                //   children: <Widget>[
                //     Text(
                //       'Dirbble',
                //       style: TextStyle(color: Colors.black, fontSize: 22),
                //     ),
                //     Text(
                //       '.com/raazcse',
                //       style: TextStyle(color: textColor, fontSize: 15),
                //     )
                //   ],
                // ),
                Spacer(),
                // Material(
                //   borderRadius: BorderRadius.all(Radius.circular(100)),
                //   child: InkWell(
                //     borderRadius: BorderRadius.all(Radius.circular(100)),
                //     onTap: () {},
                //     child: Padding(
                //       padding: const EdgeInsets.all(12),
                //       child: Icon(
                //         Icons.insert_emoticon,
                //         color: textColor,
                //         size: 40,
                //       ),
                //     ),
                //   ),
                // ),
                // Column(
                //   children: <Widget>[
                //     Text(
                //       'Behance',
                //       style: TextStyle(color: Colors.black, fontSize: 22),
                //     ),
                //     Text(
                //       '.net/surjasin',
                //       style: TextStyle(color: textColor, fontSize: 15),
                //     )
                //   ],
                // ),
                SizedBox(
                  width: 14,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
