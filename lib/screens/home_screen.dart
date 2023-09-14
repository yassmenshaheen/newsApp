

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/screens/search_controllar.dart';

import 'package:news/screens/sources_title.dart';
import 'package:news/shared/network/remote/api_manager.dart';

import '../models/category_modle.dart';
import 'categories_screen.dart';
import 'drawer_item.dart';
import 'news_screen.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName="news";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(onDrawerClicked),
      appBar: AppBar(
        title: Text("News App", style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w100
        )),

        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, SearchControllar.routeName, (route) => false);
            },
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)))
        ],
        backgroundColor: Color(0xFF39A552),
        centerTitle: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
            )
        ),
      ),
      body:modle==null? CategoriesScreen(onCategoryClick):NewsScreen(modle!),
    );
  }

 CategoryModle? modle=null;

  onCategoryClick(categoryModle){
    modle=categoryModle;
    setState(() {

    });

  }
  onDrawerClicked(number){
    if(number==DrawerItem.CATEGORY){
      modle=null;
      Navigator.pop(context);
      setState(() {

      });
    }else if(number==DrawerItem.SETTING){

    }
  }
}
