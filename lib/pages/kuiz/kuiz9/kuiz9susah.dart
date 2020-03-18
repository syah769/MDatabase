import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sains/pages/kuiz/quiz_timer1.dart';
import 'package:sains/pages/kuiz/result1.dart';

class JsonHard9 extends StatelessWidget {
  String assettoload;
  // String langname;
  // Json(this.langname);

  setasset() {
    assettoload = "assets/kuizjson/json9/json9susah.json";
  }

  @override
  Widget build(BuildContext context) {
    setasset();
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload, cache: true),
      builder: (context, snapshot) {
        List mydata = jsonDecode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return Kuiz9Susah(mydata: mydata);
        }
      },
    );
  }
}

class Kuiz9Susah extends StatefulWidget {
  var mydata;
  Kuiz9Susah({Key key, @required this.mydata}) : super(key: key);

  @override
  _Kuiz9SusahState createState() => _Kuiz9SusahState(mydata);
}

class _Kuiz9SusahState extends State<Kuiz9Susah> {
  var mydata;
  _Kuiz9SusahState(this.mydata);

  Color colortoshow = Colors.indigo;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  int timer = 30;
  String showtimer = "30";

  Map<String, Color> btncolor = {
    "a": Colors.indigo,
    "b": Colors.indigo,
    "c": Colors.indigo,
    "d": Colors.indigo,
  };

  bool canceltimer = false;

  @override
  void initState() {
    starttimer();
    super.initState();
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 30;
    setState(() {
      if (i < 5) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Result1(marks: marks),
        ));
      }
      btncolor["a"] = Colors.indigo;
      btncolor["b"] = Colors.indigo;
      btncolor["c"] = Colors.indigo;
      btncolor["d"] = Colors.indigo;
    });
    starttimer();
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      marks = marks + 5;
      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
    setState(() {
      btncolor[k] = colortoshow;
      canceltimer = true;
    });

    Timer(Duration(seconds: 1), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 5.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.indigoAccent[700],
        highlightColor: Colors.indigo[700],
        minWidth: 300.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    "Maaf",
                  ),
                  content: Text("Sila habiskan soalan"),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"),
                    )
                  ],
                ));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          backgroundColor: Colors.pink,
        ),
        body: Stack(
          children: <Widget>[
            if (mydata[3][i.toString()] != null) Container(),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      // height: 300.0,
                      // width: 400.0,
                      child: Image.asset(mydata[3][i.toString()]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      mydata[0][i.toString()],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        choicebutton('a'),
                        choicebutton('b'),
                        choicebutton('c'),
                        choicebutton('d'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        QuizTimer1(
                          onCompleted: () {
                            const onesec = Duration(seconds: 30);
                            Timer.periodic(onesec, (Timer t) {
                              setState(() {
                                if (timer < 1) {
                                  t.cancel();
                                  nextquestion();
                                } else if (canceltimer == true) {
                                  t.cancel();
                                } else {
                                  timer = timer - 1;
                                }
                              });
                            });
                          },
                          duration: Duration(seconds: 150),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
