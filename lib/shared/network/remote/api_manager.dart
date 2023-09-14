
import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:news/models/NewsDataModle.dart';
import 'package:news/models/sources_model.dart';

import '../../components/conestant.dart';

class ApiManager{


    static Future<SourcesResponse> getSources(String categoryId)async{
    Uri url=Uri.https("newsapi.org","/v2/top-headlines/sources",
    {"apiKey": "a13104d247004a35853d24cecc1bfae4",
    "category":categoryId});
    var response=await http.get(url);
    print(response.body);
    var jsonData=jsonDecode(response.body);

    SourcesResponse Sources=SourcesResponse.fromJson(jsonData);

    return Sources;
  }

   static Future<NewsDataModle> getNewsData(String sourceId)async{

      Uri url=Uri.https(Constants.BASE_URL,"/v2/top-headlines/sources",
          {"apiKey":Constants.API_KEY,"sources":sourceId});
     var response=await http.get(url);

     var jsonData=jsonDecode(response.body);
     NewsDataModle newsDataModle=NewsDataModle.fromJson(jsonData);
     return newsDataModle;

  }
}