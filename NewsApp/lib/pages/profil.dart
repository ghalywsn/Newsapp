import 'package:flutter/material.dart';

class ProfilesWidget extends StatelessWidget {
  final String nama;
  final num nim;
  final String image;
  final String kel;
  const ProfilesWidget({Key key, this.nim, this.nama, this.image, this.kel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: CircleAvatar(
          radius: 50,
          child: ClipRRect(
              child: Image.asset(kel), borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          nama,
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        subtitle: Text(
          nim.toString(),
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }
}
