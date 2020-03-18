import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {

  void _launchEmail(String emailId) async {
    var url = "mailto:$emailId";
    if(await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not send email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 350.0,
              width: double.infinity,
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              color: Color(0xFF632fbc),
            ),
            // Align(
            //   alignment: Alignment.topLeft,
            //   // child: IconButton(
            //   //   icon: Icon(Icons.arrow_back_ios),
            //   //   onPressed: () {},
            //   //   color: Colors.white,
            //   // ),
            // ),
            Positioned(
              top: 125.0,
              left: 15.0,
              right: 15.0,
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(7.0),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 75.0,
              left: (MediaQuery.of(context).size.width / 2 - 50.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        image: AssetImage('assets/mlearning.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: 190.0,
              left: (MediaQuery.of(context).size.width / 2) - 105.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'M-Learning Database Design',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Polimas',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Color(0xFF8a4fee),
                        onPressed: () {
                           _launchEmail('Khuzairihelmi99@gmail.com');
                        },
                        child: Text(
                          'Email Us',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Colors.grey,
                        onPressed: () {
                          launch('https://www.facebook.com/JTMK-Polimas-475545045981072/');
                        },
                        child: Text(
                          'Follow Us',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        // SizedBox(height: 10.0),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       Text(
        //         'Menu',
        //         style: TextStyle(
        //             fontFamily: 'Comfortaa',
        //             fontSize: 17.0,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(height: 10.0),
        Column(
          children: <Widget>[
            menuCard(
              'Developer',
              'assets/team.png',
              'Mohammad Khuzairi Helmi bin Rushidi',
              'Mohamed Ikhwan bin Mohamad Ikbal',
              'Nur Aqilah binti Mohamad Nor\n',
              'Supervisor',
              'Zati Hanani binti Zainal'
            ),
            SizedBox(height: 12.0),
            menuCard2(
              'Objective',
              'assets/career.png',
              'To develop mobile learning database\nplatform for DDT student\n',
              'Provide a tool for student to learn\nEntity Relational Diagram (ERD)\n',
              'To display Entity Relationship Diagram\nusing AR',
            ),
          ],
        ),
        SizedBox(height: 25.0),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 5.0),
          child: Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        SizedBox(height: 15.0),
      ],
    ));
  }

  Widget getWorks(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100.0,
        width: 125.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    );
  }

  Widget menuCard(
      String title, String imgPath, String type, String type1, String type2, String type3, String type4) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 151.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    type1,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    type2,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    type3,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                   Text(
                    type4,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 7.0),
                  SizedBox(height: 4.0),
                  Row()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget menuCard2(String title, String imgPath, String type, String type1, String type2) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 175.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    type1,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    type2,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  // Text(
                  //   type3,
                  //   style: TextStyle(
                  //       fontFamily: 'Comfortaa',
                  //       color: Colors.grey,
                  //       fontSize: 14.0,
                  //       fontWeight: FontWeight.w400),
                  // ),
                  // SizedBox(height: 7.0),
                  // SizedBox(height: 4.0),
                  Row()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
