import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/category_modle.dart';

class CategoryItem extends StatelessWidget {
 CategoryModle categoryModle;
 int index;


 CategoryItem(this.categoryModle,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
         topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
          bottomRight:index.isEven?Radius.circular(25):Radius.zero,
            bottomLeft:index.isOdd?Radius.circular(25):Radius.zero,
        ),
        color: categoryModle.color
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(categoryModle.image)),
          Text(categoryModle.name,style:GoogleFonts.elMessiri(fontSize: 24,
          color: Colors.white),)
        ],
      ),
    );
  }
}
