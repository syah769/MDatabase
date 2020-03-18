// import 'package:flutter/material.dart';

// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

// class Epidermis extends StatefulWidget {
//   @override
//   _EpidermisState createState() => _EpidermisState();
// }

// class _EpidermisState extends State<Epidermis> {
//   ArCoreController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ArCoreView(
//         onArCoreViewCreated: _onArCoreViewCreated,
//         enableTapRecognizer: true,
//       ),
//     );
//   }

//   _onArCoreViewCreated(ArCoreController localController) {
//     controller = localController;
//     controller.onPlaneTap = _onPlaneTap;
//   }

//   _onPlaneTap(List<ArCoreHitTestResult> hits) => _onHitDetected(hits.first);

//   _onHitDetected(ArCoreHitTestResult plane) {
//     controller.addArCoreNodeWithAnchor(
//       ArCoreReferenceNode(
//         obcject3DFileName: "epidermis.sfb",
//         position: plane.pose.translation,
//         rotation: plane.pose.rotation,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
