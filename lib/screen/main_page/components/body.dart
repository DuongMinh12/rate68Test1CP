import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/converter_page/converter_page.dart';

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
            height: 250,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 40),
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
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
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
        padding: EdgeInsets.only(left: 16, right: 16),
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
        padding: EdgeInsets.only(left: 16, right: 16),
        child: ButtonIconDropDown(),
      ),
    );
  }
}


class ButtonSizeBox extends StatelessWidget {
  final String title;
  final int indexSelect;
  const ButtonSizeBox({super.key, required this.title, this.indexSelect = 0 });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, ConverterPage.routeName);
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: kMainColor),
          ),
        )),
      ),
    );
  }
}




const List<String> listdata = <String>['English', 'France'];
const List<String> listcurrence = <String>['USD', 'VND'];
const List<Icon> listicon = <Icon>[Icon(Icons.light_mode),Icon(Icons.bedtime_outlined)];

//english
class ButtonDropDown extends StatefulWidget {
  const ButtonDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonDropDown> createState() => _ButtonDropDownState();
}

class _ButtonDropDownState extends State<ButtonDropDown> {
  @override
  String DropDownValue = listdata.first;
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listdata.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(child: Text(value), value: value);
      }).toList(),
      value: DropDownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      isExpanded: true,
      underline: const SizedBox(),
      onChanged: (String? value) {
        setState(() {
          DropDownValue = value!;
        });
      },
    );
  }
}

//currency
class ButtonCurrencyDropDown extends StatefulWidget {
  const ButtonCurrencyDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonCurrencyDropDown> createState() => _ButtonCurrencyDropDownState();
}

class _ButtonCurrencyDropDownState extends State<ButtonCurrencyDropDown> {
  String dropDownValueCurrency = listcurrence.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listcurrence.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(child: Text(value), value: value);
      }).toList(),
      value: dropDownValueCurrency,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      isExpanded: true,
      underline: const SizedBox(),
      onChanged: (String? value) {
        setState(() {
          dropDownValueCurrency = value!;
        });
      },
    );
  }
}

//icon
class ButtonIconDropDown extends StatefulWidget {
  const ButtonIconDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonIconDropDown> createState() => _ButtonIconDropDownState();
}

class _ButtonIconDropDownState extends State<ButtonIconDropDown> {
  Icon dropDownValueIcon = listicon.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Icon>(
      items: listicon.map<DropdownMenuItem<Icon>>((Icon value) {
        return DropdownMenuItem<Icon>(child: value, value: value);
      }).toList(),
      value: dropDownValueIcon,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      isExpanded: true,
      underline: const SizedBox(),
      onChanged: (Icon? value) {
        setState(() {
          dropDownValueIcon = value!;
        });
      },
    );
  }
}