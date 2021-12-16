import 'package:flutter/material.dart';
import 'button_widget.dart';

class Post extends StatelessWidget {
  final String imagePath;
  final String userName;
  final String description;
  final int wishNum;
  final bool isGrantPost;

  const Post({
    Key? key,
    required this.imagePath,
    required this.userName,
    required this.description,
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
          Row(
            children: <Widget>[
              Container(color: Colors.green, child: Icon(Icons.account_circle_rounded)),
              Align(alignment: Alignment(-1,0), child: Text(userName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white))),
            ],
          ),
          Image.asset(imagePath),
          Row(
             children: <Widget>[
               isGrantPost == true ? Align(alignment: Alignment(-1,0), child: Text("Wish Cost: " + wishNum.toString(), style: TextStyle(color: Colors.white)))
                  : Align(alignment: Alignment(-1,0), child: Text("Wish Offer: " + wishNum.toString(), style: TextStyle(color: Colors.white))),
                Image.asset('images/wishIcon.png.', scale:5.0),
                isGrantPost == true ? ButtonWidget(text: 'request', onClicked:() async {}) : ButtonWidget(text: 'Grant', onClicked: () async {},)
             ],
          ),
          Align(alignment: Alignment(-0.9, 0), child: Text(description, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white))),
          Text(' '), //for empty space between posts
          Text(' ')
        ],
      )
  );
}

