// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
// import 'package:sains/pages/argumented/epidermis.dart';
// import 'package:sains/theme/designCourseAppTheme.dart';

// class Reality extends StatefulWidget {
//   @override
//   _RealityState createState() => _RealityState();
// }

// class _RealityState extends State<Reality> with TickerProviderStateMixin {
//   Animation animation, delayedAnimation, muchDelayedAnimation;
//   AnimationController animationController;

//   @override
//   void initState() {
//     super.initState();
//     animationController =
//         AnimationController(duration: Duration(seconds: 1), vsync: this);
//     animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//         curve: Curves.fastOutSlowIn, parent: animationController));

//     delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//         curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn),
//         parent: animationController));

//     muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//         curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
//         parent: animationController));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     animationController.forward();
//     return AnimatedBuilder(
//       animation: animationController,
//       builder: (BuildContext context, Widget child) {
//         return WillPopScope(
//           child: Scaffold(
//             backgroundColor: Colors.transparent,
//             body: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: MediaQuery.of(context).padding.top,
//                 ),
//                 getAppBarUI(),
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.all(20.0),
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Expanded(
//                             child: Transform(
//                           transform: Matrix4.translationValues(
//                               animation.value * width, 0.0, 0.0),
//                           child: GridView.count(
//                             physics: BouncingScrollPhysics(),
//                             crossAxisCount: 2,
//                             scrollDirection: Axis.vertical,
//                             children: <Widget>[
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Epidermis()));
//                                 },
//                                 child: Card(
//                                   color: Colors.transparent,
//                                   elevation: 0,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               'assets/iconbab/space.png'),
//                                           fit: BoxFit.fitHeight),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: () {},
//                                 child: Card(
//                                   color: Colors.transparent,
//                                   elevation: 0,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               'assets/iconbab/lungs.png'),
//                                           fit: BoxFit.fitHeight),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: () {},
//                                 child: Card(
//                                   color: Colors.transparent,
//                                   elevation: 0,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               'assets/iconbab/epidermis.png'),
//                                           fit: BoxFit.cover),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: () {},
//                                 child: Card(
//                                   color: Colors.transparent,
//                                   elevation: 0,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               'assets/iconbab/metal.png'),
//                                           fit: BoxFit.cover),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ))
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           onWillPop: () => showDialog<bool>(
//             context: context,
//             builder: (c) => AlertDialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(13),
//               ),
//               title: Text('Keluar dari aplikasi ini'),
//               content: Text('Adik pasti?'),
//               actions: [
//                 FlatButton(
//                   child: Text(
//                     'Tidak',
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   onPressed: () => Navigator.pop(c, false),
//                 ),
//                 FlatButton(
//                   child: Text(
//                     'Ya',
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   onPressed: () => SystemNavigator.pop(),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget getAppBarUI() {
//     final double width = MediaQuery.of(context).size.width;
//     animationController.forward();
//     return AnimatedBuilder(
//       animation: animationController,
//       builder: (BuildContext context, Widget child) {
//         return Padding(
//           padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                 child: Transform(
//                   transform: Matrix4.translationValues(
//                       animation.value * width, 0.0, 0.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "AR",
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22,
//                           letterSpacing: 0.27,
//                           color: DesignCourseAppTheme.darkerText,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform(
//                 transform: Matrix4.translationValues(
//                     animation.value * width, 0.0, 0.0),
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Image.asset('assets/icons/ar.png'),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
