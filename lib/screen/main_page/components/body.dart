import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/main_page/components/button_dropDown.dart';
import 'package:testappppp/screen/total_page/total_page.dart';

class Body extends StatefulWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> titles = ['Converter', 'Live Rate', 'P2P trading', 'Download App'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 270,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
            child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (BuildContext context, int index) {
                  return ButtonSizeBox(
                    title: titles[index],
                  );
                }),
          ),
        ),
        Column(
          children: [
            buildDropdownButton(),
            buildDropdownButtonCurrency(),
            buildDropdownButtonIcon(),
          ],
        )
      ],
    );
  }

  Container buildDropdownButton() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ButtonDropDown(),
      ),
    );
  }

  Container buildDropdownButtonCurrency() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ButtonCurrencyDropDown(),
      ),
    );
  }

  Container buildDropdownButtonIcon() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ButtonIconDropDown(),
      ),
    );
  }
}

class ButtonSizeBox extends StatefulWidget {
  final String title;
  const ButtonSizeBox({
    super.key,
    required this.title,
  });

  @override
  State<ButtonSizeBox> createState() => _ButtonSizeBoxState();
}

class _ButtonSizeBoxState extends State<ButtonSizeBox> {
  var isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, TotalPage.routeName);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: isHover? kMainColor :Colors.white,
              width: 2,
            )
          )
        ),
      ),
    );
  }
}

