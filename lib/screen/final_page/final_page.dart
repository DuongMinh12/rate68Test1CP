import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/final_page/components/ButtonIconDd.dart';
import 'package:testappppp/screen/final_page/components/body.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);
  static String routeName = 'finalPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text('Live Exchange Rates',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ) ,)
            ],
          ),
        ));
  }
}

