import 'dart:io' as io;
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';

class Download extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Download1(),
    );
  }
}

List localDataList = [
  ['FP 30412', 'DFC 203316'],
  [
    'https://firebasestorage.googleapis.com/v0/b/flutter-ff6ea.appspot.com/o/FP30412-Jan-2017.pdf?alt=media&token=96f2220c-2de5-447d-b3b1-6157a16c69cc',
    'https://firebasestorage.googleapis.com/v0/b/flutter-ff6ea.appspot.com/o/DFC203316-Feb-2017.pdf?alt=media&token=bd908644-0a08-4a95-b909-3e7cbdc65412'
  ],
  ['pdf', 'pdf']
];
String progressString = '0%';
var progressValue = 0.0;
final PermissionHandler _permissionHandler = PermissionHandler();


class Download1 extends StatefulWidget {
  @override
  _Download1State createState() => _Download1State();
}

class _Download1State extends State<Download1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Year Questions'),
      ),
      body: ListView.builder(
          itemCount: localDataList[0].length,
          itemBuilder: (c, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Center(child: Text((index + 1).toString())),
              ),
              title: Text(localDataList[0][index].toString()),
              subtitle: Text(localDataList[2][index].toString()),
              trailing: RaisedButton(
                onPressed: (){
                 /* downloadFile(
                      localDataList[1][index], localDataList[0][index],
                      localDataList[2][index]);*/
                  CheckPermission(localDataList[1][index], localDataList[0][index],localDataList[2][index]);
                  //await _permissionHandler.requestPermissions([PermissionGroup.storage]);

                 /* var result = await _permissionHandler.requestPermissions([PermissionGroup.storage]);
                  if (result[PermissionGroup.storage] == PermissionStatus.granted) {
                    downloadFile(
                        localDataList[1][index], localDataList[0][index],
                        localDataList[2][index]);
                  }else{print("Pat pat siku lipak..!!");}*/


                },
                child: Text('Download File'),
              ),
            );
          }),
    );
  }

  CheckPermission(a,b,c)async{
    var result = await _permissionHandler.requestPermissions([PermissionGroup.storage]);
    if (result[PermissionGroup.storage] == PermissionStatus.granted) {
      print("access");

      downloadFile(a,b,c);


    }else{
      print("no access");
    }

  }

  Future<void> downloadFile(
      String url, String fileName, String extension) async {
    var dio = new Dio();
    var dir = await getExternalStorageDirectory();
    var knockDir =
    //await new Directory('${dir.path}/AZAR').create(recursive: true);
    await new Directory('/storage/emulated/0/MLearning').create(recursive: true);
    print("Hello checking the file in External Storage");
    io.File('${knockDir.path}/$fileName.$extension').exists().then((a) async {
      print(a);
      if (a) {
        print("Opening file");
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text('File is already downloaded'),
                actions: [
                  //   FlatButton(
                  //     child: Text(
                  //       'NOTED',
                  //       style: TextStyle(color: Colors.black),
                  //     ),
                  //    onPressed: () {
                  //   // TODO write your function to open file
                  //   // Navigator.pop(context);
                  // }
                  //   ),
                ],
              );
            });
        return;
      } else {
        print("Downloading file");
        openDialog();
        await dio.download(url, '${knockDir.path}/$fileName.$extension',
            onReceiveProgress: (rec, total) {
              if (mounted) {
                setState(() {
                  progressValue = (rec / total);
                  progressString = ((rec / total) * 100).toStringAsFixed(0) + "%";
                  myDialogState.setState(() {
                    myDialogState.progressData = progressString;
                    myDialogState.progressValue = progressValue;
                  });
                });
              }
            });
        if (mounted) {
          setState(() {
            print('${knockDir.path}');
            // TODO write your function to open file
          });
        }
        print("Download completed");
      }
    });
  }

  openDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return MyDialog();
      },
    );
  }
}

_MyDialogState myDialogState;

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() {
    myDialogState = _MyDialogState();
    return myDialogState;
  }
}

class _MyDialogState extends State<MyDialog> {
  String progressData = '0%';
  var progressValue = 0.0;
  @override
  Widget build(BuildContext context) {
    print(progressValue);
    return AlertDialog(
      content: LinearProgressIndicator(
        value: progressValue,
        backgroundColor: Colors.red,
      ),
      title: Text(progressData),
      actions: [
        progressValue == 1.0
            ? FlatButton(
            child: Text(
              'OK',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              // TODO write your function to open file
              Navigator.pop(context);
            })
            : Container()
      ],
    );
  }
}