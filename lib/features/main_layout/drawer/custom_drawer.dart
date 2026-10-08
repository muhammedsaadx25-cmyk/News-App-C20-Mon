import 'package:flutter/material.dart';
import 'package:news_abbas/core/resources/colors_manager.dart';
import 'package:news_abbas/providers/home_provider.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Drawer(
      backgroundColor: ColorsManager.black,
      child: Column(
        children: [
Container(
  alignment: Alignment.center,
    height: 166,
    width: double.infinity,
    color: ColorsManager.white,
    child: Text("News App", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: ColorsManager.black),)),
          SizedBox(height: 16,),
          InkWell(
            onTap: (){
              homeProvider.goToCategories();
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(Icons.home_outlined, color: ColorsManager.white,),
                SizedBox(width: 8,),
                Text("Go to home",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: ColorsManager.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}
