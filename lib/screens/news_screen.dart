import 'package:flutter/material.dart';
import 'package:news/screens/sources_title.dart';

import '../models/category_modle.dart';
import '../shared/network/remote/api_manager.dart';

class NewsScreen extends StatelessWidget {
  CategoryModle categoryModle;
int currentSource=0;

  NewsScreen(this.categoryModle);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder( future: ApiManager.getSources(categoryModle.id),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Center(child: Text("Something went wrong"));
        }
       var sources=snapshot.data?.sources??[];
        return SourcesTitle(sources,currentSource);

      },);
  }
}
