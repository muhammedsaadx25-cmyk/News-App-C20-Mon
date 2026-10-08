import 'package:flutter/material.dart';
import 'package:news_abbas/config/theme/theme_manager.dart';
import 'package:news_abbas/core/resources/routes_manager.dart';
import 'package:news_abbas/providers/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> HomeProvider(),
      child: const NewsApp()));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesManager.mainLayout,
      routes: RoutesManager.routes,
      theme:ThemeManager.light ,
      darkTheme: ThemeManager.dark,
      themeMode:ThemeMode.light,
      locale: Locale('en'),
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
    );
  }
}
