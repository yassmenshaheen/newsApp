import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/NewsDataModle.dart';

class NewsTitle extends StatelessWidget {
  static const String routeName="news";
  Articles articles;


  NewsTitle(this.articles);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(articles.urlToImage??"",height: 232 ,
    width: double.infinity,
      fit: BoxFit.fill,),

        SizedBox(
          height: 8,
        ),

        Text(articles.title??"",
            maxLines: 1,
            style: GoogleFonts.aBeeZee(fontSize: 16,fontWeight: FontWeight.bold)),
        Text(articles.description??"",maxLines: 2
            ,style: GoogleFonts.quicksand(fontSize: 12,fontWeight: FontWeight.w400,
                color: Colors.grey.shade800)),
      ],
    );
  }
}
