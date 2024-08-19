import 'package:flutter/material.dart';
import 'package:news_app/app_colors.dart';
import 'package:news_app/home/news/news_item.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/model/api_manager.dart';

class NewsWidget extends StatefulWidget {
  Source source;
  NewsWidget({required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>(
        future: ApiManager.getNewsBySourceId(widget.source.id ?? ""),
        builder: (context, snapshot) {
          ///in loading case
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryLightColor,
              ),
            );
            ///in client error case
          }else if(snapshot.hasError){
            return Column(
              children: [
                Text("Something went wrong"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.whiteColor,
                    backgroundColor: AppColors.primaryLightColor,
                  ),
                    onPressed: (){
                      ApiManager.getNewsBySourceId(widget.source.id ?? "");
                      setState(() {

                      });
                    },
                    child: Text("Try Again")
                )
              ],
            );
          }
          ///server(response) => success , error
          if(snapshot.data!.status! != "ok"){
            return Column(
              children: [
                Text(snapshot.data!.message!),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.whiteColor,
                      backgroundColor: AppColors.primaryLightColor,
                    ),
                    onPressed: (){
                      ApiManager.getNewsBySourceId(widget.source.id ?? "");
                      setState(() {

                      });
                    },
                    child: Text("Try Again")
                )
              ],
            );
          }
          ///in success case
          var newsList = snapshot.data!.articles!;
          return ListView.builder(
              itemBuilder: (context, index){
                return NewsItem(news: newsList[index]);
              },
            itemCount: newsList.length,
          );
        }
    );
  }
}
