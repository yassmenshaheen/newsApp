import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/style/colors/app_color.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName="setting";
  Function onClicked;


  SettingScreen(this.onClicked);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Scaffold(),
        appBar: AppBar(
        title: Text("News App", style: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w100
    )),
        ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("language"),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: primaryColor),
              ),
              child: Text("English"
              ),),
          ],
        ),
      ),

    );
  }
  }

