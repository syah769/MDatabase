import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes6point1 extends StatefulWidget {
  @override
  _Notes6point1State createState() => _Notes6point1State();
}

class _Notes6point1State extends State<Notes6point1> {
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
          "Sumber Tenaga Untuk Menjana Tenaga Elektrik",
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
        title: Text(
            "• Tenaga angin digunakan untuk memutarkan kincir angin bagi menjana elektrik\n\n"
            "• Petroleum adalah cecair semula jadi berwarna kuning kehitaman yang dijumpai di bawah permukaan Bumi\n\n"
            "• Tenaga solar adalah tenaga cahaya dari Matahari ditukarkan kepada tenaga elektrik oleh sel solar\n\n"
            "• Tenaga nuklear daripada pereputan radioaktif serta pembelahan atau pelakuran nuklear\n\n"
            "• Tenaga geoterma wujud dalam bentuk haba di bawah permukaan Bumi\n\n"
            "• Arang batu adalah batuan keras berwarna hitam yang menjadi sumber utama penjanaan tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Tenaga boleh diperbaharui dan tidak boleh diperbaharui",
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
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset("assets/nota/sumber.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Jenis Penjana Elektrik",
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
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/jenis1.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Perubahan tenaga\n"),
        subtitle: Text(
            "• Tenaga kimia -> Tenaga haba -> Tenaga kinetik -> Tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mekanisme\n"),
        subtitle: Text(
            "• Pembakaran bahan api -> Air dididihkan menjadi stim -> Stim putarkan turbin -> Penjana hasilkan tenaga elektrik\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/jenis2.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Perubahan tenaga\n"),
        subtitle: Text(
            "• Tenaga keupayaan graviti -> Tenaga kinetik -> Tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mekanisme\n"),
        subtitle: Text(
            "• Air tersimpan di empangan tinggi -> Air mengalir dari aras tinggi ke rendah -> Aliran air putarkan turbin -> Penjana hasilkan tenaga elektrik\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/jenis3.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Perubahan tenaga\n"),
        subtitle: Text(
            "• Tenaga nuklear -> Tenaga haba -> Tenaga kinetik -> Tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mekanisme\n"),
        subtitle: Text(
            "• Tindak balas nuklear ->  Air dididihkan menjadi stim  -> Stim putarkan turbin -> Penjana hasilkan tenaga elektrik\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/jenis4.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Perubahan tenaga\n"),
        subtitle: Text(
            "• Tenaga kimia -> Tenaga haba -> Tenaga kinetik -> Tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mekanisme\n"),
        subtitle: Text(
            "• Metana dihasilkan oleh biojisim ->  Air dididihkan menjadi stim  -> Stim putarkan turbin -> Penjana hasilkan tenaga elektrik\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/jenis5.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Perubahan tenaga\n"),
        subtitle: Text("• Tenaga cahaya -> Tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mekanisme\n"),
        subtitle: Text(
            "• Sinaran matahari -> Panel suria tukarkan tenaga cahaya kepada elektrik\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/jenis6.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Perubahan tenaga\n"),
        subtitle: Text("• Tenaga kinetik -> Tenaga elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mekanisme\n"),
        subtitle: Text(
            "• Udara bergerak -> Angin gerakkan bilah -> Bilah putarkan turbin -> Penjana hasilkan tenaga elektrik\n"),
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
