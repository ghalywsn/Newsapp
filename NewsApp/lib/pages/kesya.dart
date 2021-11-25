import 'package:flutter/material.dart';

class Kesya extends StatelessWidget {
  const Kesya({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('Assets/4.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Kesya Amalia Putri',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text('21120119143120'),
            Text('Teknik Komputer 2019')
          ],
        ),
      ),
    );
  }
}
