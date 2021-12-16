
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/user.dart';
import '../utils/user_preferences.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/numbers_widget.dart';
import '../widgets/profile_widget.dart';
import '../widgets/WishCount.dart';
import '../widgets/postPreview.dart';
import '/utils/userPosts.dart';
import '/models/postPreviewData.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    //this would be a loop eventually reading from utils where are a users data is stored for now
    final userPost1 = UserPosts.post1;
    final userPost2 = UserPosts.post2;
    final userPost3 = UserPosts.post3;
    final userPost4 = UserPosts.post4;
    var userPosts = <PostPreviewData>[userPost1, userPost2, userPost3, userPost4];

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          Row(children: [
            WishCount(),
            NumbersWidget()
          ], mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 10),
          buildAbout(user),
          PostsGrid(userPosts)
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );


  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ],
    ),
  );
}

Widget PostsGrid(userPosts) => GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 3,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(userPosts.length, (index) {
        return Center(
          child: PostPreview(
            imagePath: userPosts[index].imagePath,
            wishNum: userPosts[index].wishNum,
            isGrantPost: userPosts[index].isGrantPost
          ),
        );
      }),
    );
