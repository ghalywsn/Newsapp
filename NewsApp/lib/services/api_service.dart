import 'dart:convert';

import 'package:NewsApp/model/article_model.dart';
import 'package:http/http.dart';

//bikin HTTP request services
// bikin class untuk membuat simple get http request
// dari API and get Articles lalu return a list of Articles

class ApiService {
  //bikin endpoint urlnya
 

  
  final endPointUrl =
      "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0815c3b6d7884bcc89dfa07b9d842c54";

  //bikin the http request function
  //import http package

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    //ngecheck 200 status code: requestnya sukses
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      //line untuk get different articles dari json file lalu taro ke list-nya
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
