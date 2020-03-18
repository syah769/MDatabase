import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes3point3 extends StatefulWidget {
  @override
  _Notes3point3State createState() => _Notes3point3State();
}

class _Notes3point3State extends State<Notes3point3> {
  List<Widget> listViews = List<Widget>();
  var scrollController = ScrollController();
  double topBarOpacity = 0.0;

  @override
  void initState() {
    addAllListData();

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    super.initState();
  }

  void addAllListData() {
    listViews.add(
      ListTile(
        title: Text(
          "Fungsi Setiap Sel Darah",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Sel darah merah\n"),
        subtitle: Text("• Mengangkut oksigen ke seluruh badan\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Sel darah putih\n"),
        subtitle:
            Text("• Melindungi badan daripada penyakit dan melawan jangkitan"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Platlet\n"),
        subtitle: Text("• Membantu pembekuan darah"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Fungsi darah\n"),
        subtitle:
            Text("• Mengumpul sisa metabolik dari atas dan bawah tubuh\n\n"
                "• Penghantaran nutrien yang dihasilkan oleh badan\n\n"
                "• Pengangkutan hormon yang dihasilkan oleh kelenjar\n\n"
                "• Mengawal suhu badan"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Ciri-ciri sel darah merah",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("• Mempunyai bentuk dwicekung\n\n"
            "• Jangka hayat selama 120 hari\n\n"
            "• Mengangkut karbon dioksida ke seluruh bahagian badan\n\n"
            "• Kehadiran hemoglobin\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Ciri-ciri sel darah putih",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("• Dihasilkan di nodul limfa\n\n"
            "• Membantu dalam penghasilan hormon wanita\n\n"
            "• Kehadiran granul dalam sitoplasma\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Ciri-ciri platlet",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("• Mempunyai bentuk yang tidak tetap\n\n"
            "• Dihasilkan di sumsum tulang\n\n"
            "• Cecair berwarna kuning pucat\n"),
      ),
    );
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            getMainListViewUI(),
            getAppBarUI(),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }

  Widget getMainListViewUI() {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        } else {
          return ListView.builder(
              controller: scrollController,
              padding: EdgeInsets.only(
                top: AppBar().preferredSize.height +
                    MediaQuery.of(context).padding.top +
                    24,
                bottom: 62 + MediaQuery.of(context).padding.bottom,
              ),
              itemCount: listViews.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return listViews[index];
              });
        }
      },
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
                    left: 10,
                    right: 16,
                    top: 16 - 8.0 * topBarOpacity,
                    bottom: 12 - 8.0 * topBarOpacity),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 38,
                      width: 38,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: FintnessAppTheme.grey,
                          ),
                        ),
                      ),
                    ),
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
