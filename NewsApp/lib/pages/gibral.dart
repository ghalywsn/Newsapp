import 'package:flutter/material.dart';

class Gibral extends StatelessWidget {
  const Gibral({Key key}) : super(key: key);

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
              backgroundImage: AssetImage('Assets/3.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Muhammad Gibraltar Alam',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text('21120119120133'),
            Text('Teknik Komputer 2019')
          ],
        ),
      ),
    );
  }
}
