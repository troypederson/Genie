import 'package:flutter/material.dart';

class WishCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Image.asset('images/wishIcon.png.', scale:3.0)
        ],
      );
}
