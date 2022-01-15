// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:risale/okuma/LoginPage.dart';
// import 'package:risale/okuma/MyController.dart';
// import 'package:risale/okuma/addRisale.dart';
// import 'package:risale/okuma/calendar_events.dart';
// import 'package:risale/okuma/risale/calendar.dart';

// class MainView extends StatefulWidget {
//   const MainView({Key? key}) : super(key: key);

//   @override
//   _MyBottomAppbarState createState() => _MyBottomAppbarState();
// }

// class _MyBottomAppbarState extends State<MainView> {
//   final FloatingActionButtonLocation _fabLocation = FloatingActionButtonLocation.centerDocked;
//   final bool _isBottomBarNotched = true;

//   @override
//   Widget build(BuildContext context) {
//     final MyController mycontroller = Get.put(MyController());

//     return Scaffold(
//       body: CalendarApp(),
//       // body: CalendarApp(),
//       // body: const MyCalendar(),
//       /*
//         child: ElevatedButton(
//           onPressed: () => Get.to(MyCalendar()),
//           child: Text('Calendar'),
//         ),
//       ),
//     */
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => showCupertinoModalPopup(context: context, builder: (BuildContext context) => AddRisale()),
//         //showModalBottomSheet(context: context, builder: (BuildContext context) => AddBookPage()),
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: _fabLocation,
//       bottomNavigationBar: _buildBottomAppBar(context),
//     );
//   }

//   BottomAppBar _buildBottomAppBar(BuildContext context) {
//     final MyController mycontroller = Get.find();
//     return BottomAppBar(
//       shape: _isBottomBarNotched ? const CircularNotchedRectangle() : null,
//       color: Theme.of(context).primaryColor,
//       child: Row(
//         children: <Widget>[
//           // Bottom that pops up from the bottom of the screen.
//           IconButton(
//             icon: const Icon(
//               Icons.book,
//               color: Colors.white,
//             ),
//             onPressed: () => showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) => Container(
//                 alignment: Alignment.center,
//                 height: 200,
//                 child: Obx(() => Text(
//                       'OKUNAN KITAP : ${mycontroller.getRisale} \n\nOKUNAN SAYFA : haftalik${mycontroller.getSayfa}',
//                       style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                     )),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
