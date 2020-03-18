import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes6point2 extends StatefulWidget {
  @override
  _Notes6point2State createState() => _Notes6point2State();
}

class _Notes6point2State extends State<Notes6point2> {
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
          "Sistem penghantaran dan pengagihan tenaga elektrik",
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
        padding: const EdgeInsets.all(7.0),
        child: Image.asset("assets/nota/transformer.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "• Rangkaian Grid Nasional mengagih tenaga elektrik ke seluruh negara melalui jaringan kabel\n\n"
            "• Transformer injak naik meningkatkan voltan dari 11 kV ke 132kV\n\n"
            "• Trannsformer injak turun menurunkan voltan tinggi ke 33kV atau 11kV\n\n"
            "• Stesen penjana kuasa menjana tenaga elektrik sebanyak 11kV\n\n"
            "• Lapangan suis boleh dibuka atau ditutup untuk mengaktifkan dan mematikan penghantaran kuasa elektrik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Sistem pendawaian elektrik di rumah",
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
        title: Text("Pendawaian satu fasa\n"),
        subtitle: Text(
            "• Penggunaan tenaga elektrik yang tidak melebihi 10kW atau 50 A, digunakan di kawasan perumahan di luar bandar\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Pendawaian tiga fasa\n"),
        subtitle: Text(
            "• Penggunaan tenaga elektrik yang lebih daripada 10kW atau 50 A, digunakan di kawasan komersial dan industri\n\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Image.asset("assets/nota/pendawaian.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "• Meter elektrik mengukur jumlah tenaga elektrik yang digunakan\n\n"
            "• Suis utama memutuskan bekalan kuasa elektrik apabila elektrik tidak diperlukan\n\n"
            "• Fius utama memutuskan litar jika arus melebihi nilai yang selamat\n\n"
            "• Dawai hidup mengalirkan arus elektrik dari pencawang bahagian tempatan ke rumah\n\n"
            "• Dawai bumi menyambungkan peralatan elektrik secara langsung ke Bumi\n\n"
            "• Dawai neutral mengalirkan arus elektrik dari rumah ke pencawang bahagian\n\n"
            "• Pemutus litar memutuskan arus elektrik yang mengalir melalui litar dalam keadaan luar biasa\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Bahagian dalam palam 3-pin",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/pin.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "• Biru adalah dawai neutral yang membawa arus elektrik kembali ke puncanya\n\n"
            "• Belang kuning dan hijau adalah dawai bumi yang membawa arus elektrik yang bocor ke Bumi\n\n"
            "• Perang adalah dawai hidup yang membawa arus elektrik ke peralatan elektrik\n\n"),
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
