import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sains/main.dart';
import 'package:sains/pages/home/bab/listviewsubtopik/nota/nota5/5.1.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:flutter/material.dart';

class Listview5 extends StatefulWidget {
  @override
  _Listview5State createState() => _Listview5State();
}

class _Listview5State extends State<Listview5> with TickerProviderStateMixin {
  AnimationController animationController;
  String chapter5 = "";

  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    super.initState();

    getChapter5("assets/pdf/trans.pdf").then((lima) {
      setState(() {
        chapter5 = lima.path;
        print(chapter5);
      });
    });

  }

  Future<File> getChapter5(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/trans.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (lima5) {
      throw Exception("Error opening asset file");
    }
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 134,
        width: double.infinity,
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SizedBox();
            } else {
              return ListView(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                scrollDirection: Axis.horizontal,
               
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.transparent,
                   onTap: () {
                      if (chapter5 != null)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Notes5point1(path: chapter5)));
                    },
                    child: SizedBox(
                      width: 280,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      color: HexColor("#F8FAFB"),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 48 + 24.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: Text(
                                                    "Transaction and ACID",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      letterSpacing: 0.27,
                                                      color:
                                                          DesignCourseAppTheme
                                                              .darkText,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 16, bottom: 8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 24, left: 16),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                            "assets/design_course/interFace1.png")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
