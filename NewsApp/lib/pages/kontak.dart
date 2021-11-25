import 'package:flutter/material.dart';

class Kontak extends StatelessWidget {
  const Kontak({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'About Us',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39),
            child: Text(
              'The NewsApp is  a multinational news-based pay mobile application headquartered in Jakarta, Indonesia. It is owned by NewsApp worldwide, a unit of the WarnerMedia News & Sports division of AT&Ts WarnerMedia.It was founded in 2021 by Indonesian media proprietor Ghaly Wisnu Aryawira, Anisa Aldanur, M. Gibraltar Alam and Kesya Amalia Putri as a 24-hour cable news application. Upon its launch in 2020, The NewsApp was the first mobile application channel to provide 24-hour news coverage,and was the first all-news ios application in Indonesia.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
