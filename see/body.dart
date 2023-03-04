// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
// import 'package:test1/constants.dart';
// import 'package:test1/screens/converter/converter_page.dart';
//
// class Body extends StatelessWidget {
//   Body({Key? key}) : super(key: key);
//   List<String> titles = [
//     'Converter',
//     'Live Rate',
//     'P2P Trading',
//     'Download App'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//             height: 250,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(16, 40, 16, 40),
//               child: ListView.builder(
//                   itemCount: titles.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Button(
//                       title: titles[index],
//                     );
//                   }),
//             )),
//         Column(
//           children: [
//             buildDropdownButton(),
//             buildDropdownButtonCurrency(),
//             buildDropdownButtonIcon(),
//           ],
//         )
//       ],
//     );
//   }
//
//   Container buildDropdownButton() {
//     return Container(
//       margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 16, right: 16),
//         child: ButtonDropDown(),
//       ),
//     );
//   }
//
//   Container buildDropdownButtonCurrency() {
//     return Container(
//       margin: const EdgeInsets.only(left: 16, right: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: const Padding(
//         padding: EdgeInsets.only(left: 16, right: 16),
//         child: ButtonCurrencyDropDown(),
//       ),
//     );
//   }
//
//   Container buildDropdownButtonIcon() {
//     return Container(
//       margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: const Padding(
//         padding: EdgeInsets.only(left: 16, right: 16),
//         child: ButtonIconDropDown(),
//       ),
//     );
//   }
// }
//
// //Button click
// class Button extends StatelessWidget {
//   const Button({
//     super.key,
//     required this.title,
//   });
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       width: double.infinity,
//       child: OutlinedButton(
//         onPressed: () {
//           Navigator.pushNamed(context, ConverterPage.routeName);
//         },
//         child: Text(title),
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//               side: const BorderSide(color: kMainColor),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // button DropDown
// const List<String> listdata = <String>['English', 'France'];
// const List<String> listcurrence = <String>['USD', 'VND'];
// const List<Icon> listicon = <Icon>[Icon(Icons.light_mode),Icon(Icons.bedtime_outlined)];
//
// //english
// class ButtonDropDown extends StatefulWidget {
//   const ButtonDropDown({Key? key}) : super(key: key);
//
//   @override
//   State<ButtonDropDown> createState() => _ButtonDropDownState();
// }
//
// class _ButtonDropDownState extends State<ButtonDropDown> {
//   @override
//   String DropDownValue = listdata.first;
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       items: listdata.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(child: Text(value), value: value);
//       }).toList(),
//       value: DropDownValue,
//       icon: const Icon(Icons.keyboard_arrow_down_outlined),
//       isExpanded: true,
//       underline: const SizedBox(),
//       onChanged: (String? value) {
//         setState(() {
//           DropDownValue = value!;
//         });
//       },
//     );
//   }
// }
//
// //currency
// class ButtonCurrencyDropDown extends StatefulWidget {
//   const ButtonCurrencyDropDown({Key? key}) : super(key: key);
//
//   @override
//   State<ButtonCurrencyDropDown> createState() => _ButtonCurrencyDropDownState();
// }
//
// class _ButtonCurrencyDropDownState extends State<ButtonCurrencyDropDown> {
//   String dropDownValueCurrency = listcurrence.first;
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       items: listcurrence.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(child: Text(value), value: value);
//       }).toList(),
//       value: dropDownValueCurrency,
//       icon: const Icon(Icons.keyboard_arrow_down_outlined),
//       isExpanded: true,
//       underline: const SizedBox(),
//       onChanged: (String? value) {
//         setState(() {
//           dropDownValueCurrency = value!;
//         });
//       },
//     );
//   }
// }
//
// //icon
// class ButtonIconDropDown extends StatefulWidget {
//   const ButtonIconDropDown({Key? key}) : super(key: key);
//
//   @override
//   State<ButtonIconDropDown> createState() => _ButtonIconDropDownState();
// }
//
// class _ButtonIconDropDownState extends State<ButtonIconDropDown> {
//   Icon dropDownValueIcon = listicon.first;
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<Icon>(
//       items: listicon.map<DropdownMenuItem<Icon>>((Icon value) {
//         return DropdownMenuItem<Icon>(child: value, value: value);
//       }).toList(),
//       value: dropDownValueIcon,
//       icon: const Icon(Icons.keyboard_arrow_down_outlined),
//       isExpanded: true,
//       underline: const SizedBox(),
//       onChanged: (Icon? value) {
//         setState(() {
//           dropDownValueIcon = value!;
//         });
//       },
//     );
//   }
// }
