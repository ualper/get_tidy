// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// // import 'package:get_tidy/calendar/EventTableCalendar.dart';
// import 'package:get_tidy/OTHERS/MyController.dart';
// import 'package:get_tidy/risale/EventTableCalendar.dart';
//
// import '../../main.dart';
// import '../OTHERS/bottom_appbar.dart';
// import '../OTHERS/bottom_appbar.dart';
//
// class AddRisale extends StatefulWidget {
//   @override
//   _AddBookPageState createState() => _AddBookPageState();
// }
//
// class _AddBookPageState extends State<AddRisale> {
//   // final risaleDB = RisaleDB();
//   // var sayfaSayisi = 11;
//   // var RisaleIsmi = 'RisaleIsmi';
//
//   final TextEditingController _risaleController = TextEditingController();
//   final TextEditingController _sayfaController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//
//   // void _sendRisale(RisaleEkle risale) {
//   //   // final risale = Risale(RisaleIsmi, sayfaSayisi);
//   //   risaleDB.saveRisale(risale);
//   //   _risaleController.clear();
//   //   setState(() {});
//   // }
//
//   String dropdownvalue = "Şualar";
//   String dropdownvalue2 = "";
//
//   var items = [
//     "İman ve küfür müvazeneleri",
//     "Asâ-yı musa",
//     "Lem'alar",
//     "Tarihçe-i hayat",
//     "Mektubat",
//     "Kastamonu lahikası",
//     "Sözler",
//     "Mesnevî-i nuriye",
//     "Emirdağ lâhikası",
//     "Şualar",
//     "Işaratü-l i'caz",
//     "Barla lâhikası",
//     "Sikke-i tasdik-i gaybi",
//     "Muhâkemât"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final MyController mycontroller = Get.put(MyController());
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Risale-i Nur Takibi"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton(
//               focusColor: Colors.green,
//               value: dropdownvalue,
//               icon: const Icon(
//                 Icons.pages_sharp,
//                 color: Colors.green,
//               ),
//               items: items.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(
//                     items,
//                     style: TextStyle(color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 );
//               }).toList(),
//               onChanged: (String? newValue) => setState(() {
//                 dropdownvalue = newValue!;
//                 dropdownvalue2 = newValue;
//                 mycontroller.setRisale(newValue);
//               }),
//             ),
//             //----------------------
//             SizedBox(height: 30),
//             // Text('Kitabiniz:' + dropdownvalue),
//             // SizedBox(height: 10),
//             // Obx(() => Text("Sayfa Sayisi: ${mycontroller.getSayfa}")),
//             // SizedBox(height: 30),
//             SizedBox(
//               width: 250,
//               height: 50,
//               child: TextFormField(
//                 key: _formKey,
//                 controller: _sayfaController,
//                 keyboardType: TextInputType.number,
//                 inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                     borderSide: BorderSide(),
//                   ),
//                   prefixIcon: Icon(
//                     Icons.last_page,
//                     color: Colors.teal,
//                   ),
//                   hintText: 'Sayfa Sayinizi Giriniz',
//                 ),
//
//                 // validator: (value) {
//                 //   if (value == null || value.isEmpty) {
//                 //     return 'Sayfa Sayinizi Giriniz';
//                 //   }
//                 //   return null;
//                 // },
//               ),
//             ),
//
//             //----------------------
//
//             //----------------------
//             ElevatedButton(
//               onPressed: () {
//                 // // Validate returns true if the form is valid, or false otherwise.
//                 // if (_formKey.currentState!.validate()) {
//                 //   // If the form is valid, display a snackbar. In the real world,
//                 //   // you'd often call a server or save the information in a database.
//                 //   ScaffoldMessenger.of(context).showSnackBar(
//                 //     const SnackBar(content: Text('BOS BIRAKMA')),
//                 //   );
//                 // }
//                 RxInt sayfa = int.parse(_sayfaController.text).obs;
//                 // mycontroller.setSayfa(_sayfaController.text);
//
//                 // final okunan = RisaleEkle(mycontroller.getRisale, mycontroller.getSayfa);
//                 // // final okunan = RisaleEkle(_risaleController.text, sayfa);
//                 // _sendRisale(okunan);
//
//                 // _sayfaController.addListener(() {
//                 //   mycontroller.setSayfa(_sayfaController.text);
//                 // });
//                 // int sayfa = int.parse(_sayfaController.text);
//                 // mycontroller.setRisale(_risaleController.text);
//                 // mycontroller.setSayfa(_sayfaController.text);
//                 // final okunan = RisaleEkle(mycontroller.getRisale, sayfa).obs;
//
//                 // TODO: SENDRISALEYI AC DB YOLLAR
//                 // _sendRisale(okunan); // DB YE RISALEYI YOLLAR
//
//                 //----------------------
//                 Get.snackbar('', '',
//                     snackPosition: SnackPosition.BOTTOM,
//                     titleText: Text(
//                       'Sayfa Sayiniz eklendi.',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     messageText: Text(
//                       // TODO: BU SAYFAYI HAFTALIK OLARAK TUT.
//                       'Bu Hafta $sayfa Sayfa Okudunuz.',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     borderWidth: 1,
//                     borderColor: Colors.teal,
//                     backgroundGradient: LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       // ignore: prefer_const_literals_to_create_immutables
//                       colors: [
//                         Colors.blue,
//                         Colors.green,
//                       ],
//                     ));
//                 FocusScope.of(context).unfocus();
//                 _sayfaController.clear();
//
//                 Get.to(EventTableCalendar());
//                 // Future.delayed(const Duration(seconds: 2), () {
//                 //   // Get.to(MainView());
//                 // });
//
//                 // Get.back();
//               },
//               child: Text(
//                 'Ekle',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
