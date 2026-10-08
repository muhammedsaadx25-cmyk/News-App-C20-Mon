import 'package:flutter/cupertino.dart';
import 'package:news_abbas/features/main_layout/main_layout.dart';

class RoutesManager{
  static const String mainLayout = '/mainLayout';
  static Map<String, WidgetBuilder> routes = {
    mainLayout: (_)=> MainLayout(),
  };
}