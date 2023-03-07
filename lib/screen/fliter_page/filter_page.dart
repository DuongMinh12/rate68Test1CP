import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/main_page/components/button_dropDown.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);
static String routeName = 'filterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Filter',
        style: TextStyle(
          color: fcolor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close),
          color: grey900,)
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Buy',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: fcolor,
              ),),
              Container(
                margin: const EdgeInsets.only(top: 8,bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ButtonCurrencyDropDown(),
                ),
              ),

               const Text('Sell',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: fcolor,
                ),),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ButtonCurrencyDropDown(),
                ),
              ),

              const Text('Payment',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: fcolor,
                ),),
              Container(
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: grey900,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ButtonCurrencyDropDown(),
                ),
              ),

              Container(
                height: 248,
                width: double.infinity,
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                  boxShadow: const [BoxShadow(
                    blurRadius:60,
                    color: boxcolor,
                  )]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
