import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/app_colors.dart';
import 'package:news_app/model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   clipBehavior: Clip.antiAlias,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(25)
          //   ),
          //   child: CachedNetworkImage(
          //     imageUrl: news.urlToImage ?? "",
          //     placeholder: (context, url) => Center(
          //         child: CircularProgressIndicator(
          //           color: AppColors.primaryLightColor,
          //         )
          //     ),
          //     errorWidget: (context, url, error) => Icon(Icons.error),
          //   ),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: news.urlToImage ?? "",
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.3,
              fit: BoxFit.fill,
              placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
                  )
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Text(news.author ?? "",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: AppColors.grayLightColor,
            fontSize: 18
          ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Text(news.title ?? "",
            style: Theme.of(context).textTheme.titleMedium
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          ///format date
          Text(DateFormat.yMd().add_jm().format(DateTime.parse(news.publishedAt ?? "")),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.grayLightColor,
            ),
          textAlign: TextAlign.end,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
        ],
      ),
    );
  }
}
