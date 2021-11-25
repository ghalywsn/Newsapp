import 'package:flutter/material.dart';

class Anisa extends StatelessWidget {
  const Anisa({Key key}) : super(key: key);

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
              backgroundImage: AssetImage('Assets/2.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Anisa Aldanur',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text('21120119130129'),
            Text('Teknik Komputer 2019')
          ],
        ),
      ),
    );
  }
}
