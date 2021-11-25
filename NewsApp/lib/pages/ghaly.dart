import 'package:flutter/material.dart';

class Ghaly extends StatelessWidget {
  const Ghaly({Key key}) : super(key: key);

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
              backgroundImage: AssetImage('Assets/1.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ghaly Wisnu Aryawira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text('21120119140139'),
            Text('Teknik Komputer 2019')
          ],
        ),
      ),
    );
  }
}
