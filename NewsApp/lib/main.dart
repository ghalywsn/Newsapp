import 'package:NewsApp/pages/mainpage.dart';
import 'package:NewsApp/pages/splash.dart';
import 'package:NewsApp/services/api_service.dart';
import 'package:flutter/material.dart';
import 'components/customListTile.dart';
import 'model/article_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),

      //ngecall APi services pake futurebuilder widget
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //check dapet respon apa engga
          if (snapshot.hasData) {
            //bikin list of articles
            List<Article> articles = snapshot.data;
            return ListView.builder(
              //bikin custom List tile
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customListTile(articles[index], context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
