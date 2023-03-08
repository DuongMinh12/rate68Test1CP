import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/final_page/components/ButtonIconDd.dart';
import 'package:testappppp/screen/final_page/components/body.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
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
          margin: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, indext) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 8),
                      color: Colors.blue,
                      child: Column(
                      children: [
                      Text('TEst 1',
                      style: TextStyle(
                      ),),
                       Text("Text 2"),
                    ],
                  )),
                ],
              );
            },
          ),
        ));
  }
}
