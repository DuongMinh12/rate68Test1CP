import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';


class ConverterPage extends StatelessWidget {
  const ConverterPage({Key? key}) : super(key: key);
  static String routeName = 'converterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset(AppImages.logoshape),
          padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
          iconSize: 24,
          onPressed: (){},
        ),
        titleSpacing: 0,
        title: const Text('Rates68',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24,
          ),),
        actions: <Widget> [
          IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
              icon: const Icon(Icons.close,
                color: Colors.black,)
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: const [
                  Text('Rates68 Currency',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text('Converter',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Check live currency exchange rate with our Rates68 converter',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),),
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
                              blurRadius: 60,// Shadow position
                            ),
                          ],
                        ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Currency Converter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Container(
                    height: 160,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      children: const [
                        Text('gghjhjbvhj')
                      ],
                    ),
                  )
                ],
              ),
            )

            // SizedBox(
            //   height: 336,
            //   width: double.infinity,
            //   child: Container(
            //     decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(12),
            //           boxShadow: const [
            //             BoxShadow(
            //               color: Colors.black12,
            //               blurRadius: 60,// Shadow position
            //             ),
            //           ],
            //         ),
            //     padding: EdgeInsets.all(20),
            //     margin: EdgeInsets.symmetric(vertical: 40),
            
            
          ],
        ),
      ),
    );
  }
}
