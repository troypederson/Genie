import 'package:flutter/material.dart';

class PostPreview extends StatelessWidget {
  final String imagePath;
  final int wishNum;
  final bool isGrantPost;

  const PostPreview({
    Key? key,
    required this.imagePath,
    required this.wishNum,
    required this.isGrantPost
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(imagePath),
              Row(
                children: <Widget>[
                  isGrantPost == true ? Align(alignment: Alignment(-1,0), child: Text("Wish Cost: " + wishNum.toString(), style: TextStyle(color: Colors.white)))
                      : Align(alignment: Alignment(-1,0), child: Text("Wish Offer: " + wishNum.toString(), style: TextStyle(color: Colors.white))),
                  Image.asset('images/wishIcon.png.', scale:5.0),
                ],
              ),
            ],
          )
      );
}