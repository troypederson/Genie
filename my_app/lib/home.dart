
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/appbar_widget.dart';
import '../utils/feed.dart';
import '../widgets/post.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //this would eventually be a list of posts gotten from user preferences
    final post1 = Feed.post1;
    final post2 = Feed.post2;
    final post3 = Feed.post3;

    return Scaffold(
      //appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
            //where all of the posts go
          Post(imagePath: post1.imagePath, userName: post1.userName, description: post1.description, wishNum: post1.wishNum,isGrantPost: post1.isGrantPost),
          Post(imagePath: post2.imagePath, userName: post2.userName, description: post2.description, wishNum: post2.wishNum,isGrantPost: post2.isGrantPost),
          Post(imagePath: post3.imagePath, userName: post3.userName, description: post3.description, wishNum: post3.wishNum,isGrantPost: post3.isGrantPost)
        ],
      ),
    );
  }

}

