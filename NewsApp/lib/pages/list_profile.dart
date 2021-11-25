import 'package:NewsApp/pages/gibral.dart';
import 'package:NewsApp/pages/anisa.dart';
import 'package:NewsApp/pages/kesya.dart';
import 'package:NewsApp/pages/ghaly.dart';
import 'package:NewsApp/pages/profil.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Newsapp founder profile',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Ghaly(),
                ),
              );
            },
            child: ProfilesWidget(
              nama: 'Ghaly Wisnu Aryawira',
              nim: 21120119140139,
              kel: "Assets/1.jpg",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Anisa(),
                ),
              );
            },
            child: ProfilesWidget(
              nama: 'Anisa Aldanur',
              nim: 21120119130129,
              kel: "Assets/2.jpg",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Gibral(),
                ),
              );
            },
            child: ProfilesWidget(
              nama: 'Muhammad Gibraltar Alam',
              nim: 21120119120133,
              kel: "Assets/3.jpg",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Kesya(),
                ),
              );
            },
            child: ProfilesWidget(
              nama: 'Kesya Amalia Putri',
              nim: 21120119143120,
              kel: "Assets/4.jpg",
            ),
          ),
        ],
      ),
    );
  }
}
