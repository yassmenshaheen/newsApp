import 'package:flutter/material.dart';
import 'package:news/screens/source_item.dart';
import 'package:news/shared/network/remote/api_manager.dart';
import '../models/sources_model.dart';
import 'news_item.dart';

class SourcesTitle extends StatefulWidget {

  List<Sources>sources;
  int index;

  SourcesTitle(this.sources,this.index);

  @override
  State<SourcesTitle> createState() => _SourcesTitleState();
}

class _SourcesTitleState extends State<SourcesTitle> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DefaultTabController(
              length: widget.sources.length,
            child: TabBar(
              onTap: (value) {
                widget.index=value;
                setState(() {});

              },
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs:
              widget.sources.map((e) {
                return SourceItem(e.name??"",widget.sources.indexOf(e)==widget.index);
              }).toList(),
            )),
        FutureBuilder(

          future: ApiManager.getNewsData(widget.sources[widget.index].id??""),
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }
              if(snapshot.hasError){
                return Center(child: Text("Something went wrong"));
              }
              var articles=snapshot.data?.articles??[];
              return Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return NewsItem(articles[index]);
                },itemCount: articles.length,),
              );
            },)
      ],
    );
  }
}
