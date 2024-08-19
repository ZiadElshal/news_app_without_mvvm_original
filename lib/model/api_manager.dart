import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/model/api_constants.dart';

///class to collect all methods of Api
class ApiManager {
/*
https://newsapi.org/v2/top-headlines/sources?apiKey=45669a633b8c4d339dd864f9bc4458f0
*/
  ///func to get news sources
  static Future<SourceResponse?> getSources(String categoryId) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApiName,
        {
         'apiKey': ApiConstants.apiKey,
         'category': categoryId,
        });
    var response = await http.get(url);
    ///used try: if an error happened from client and can't arrive to server and can't make parsing
    try{
     var responseBody = response.body;    //-> string
     var json = jsonDecode(responseBody); //-> json
     return SourceResponse.fromJson(json); //-> convert from json object to SourceResponse object
    }
    catch(e){
     throw e;
    }
  }

/*
https://newsapi.org/v2/everything?q=bitcoin&apiKey=45669a633b8c4d339dd864f9bc4458f0
*/
  static Future<NewsResponse?> getNewsBySourceId(String sourceID) async{
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.newsApiName,
    {
      'apiKey' : ApiConstants.apiKey,
      'sources' : sourceID
    });
    var response = await http.get(url);
    try{
      var responseBody = response.body;     //-> string
      var json = jsonDecode(responseBody);  //-> json
        return NewsResponse.fromJson(json); //-> convert from json object to NewsResponse object
    }
    catch(e){
      throw e;
    }

  }
}
