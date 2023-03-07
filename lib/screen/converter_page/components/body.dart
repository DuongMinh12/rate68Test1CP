import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';

class bodyConverter extends StatelessWidget {
  const bodyConverter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Rates68 Currency',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Converter',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Check live currency exchange rate with our Rates68 converter',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 336,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 60, // Shadow position
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Currency Converter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 32),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                          labelText: 'From',
                          labelStyle: TextStyle(
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding: EdgeInsets.all(10),
                        child: Container(
                          height: 20,
                            width: 20,
                            child: Image.asset(AppImages.arrow)),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'To',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'View Result',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(343, 48),
                    shape: StadiumBorder(),
                    backgroundColor: kMainColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}