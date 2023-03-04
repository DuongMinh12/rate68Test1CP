import 'package:flutter/material.dart';
import 'package:testappppp/screen/converter_page/converter_page.dart';
import 'screen/main_page/main_page.dart';
import 'package:testappppp/add_images.dart';

final Map<String, WidgetBuilder> routes = {
  MainPage.routeName: (context) => MainPage(),
  ConverterPage.routeName: (context) => ConverterPage(),
};