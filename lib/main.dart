import 'package:flutter/material.dart';
import 'package:testappppp/routes.dart';
import 'package:testappppp/screen/main_page/main_page.dart';

void main()=> runApp(
   MaterialApp(
    initialRoute: MainPage.routeName,
     routes: routes,
     debugShowCheckedModeBanner: false,
  )
);

