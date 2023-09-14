import 'package:flutter/material.dart';

class SearchControllar extends StatelessWidget {
  static const String routeName="search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Container(
            child: TextField(
                decoration:InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    )

                )

            )
        ),
      ),
    );



  }
}
