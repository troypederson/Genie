
import '../models/postData.dart';

//eventually would get posts from backend database of all posts that mach a users interests
//for now there are just static example posts
class Feed {
  static const post1 = PostData(
    imagePath: '/images/sailBoatPost.jpg',
    userName: 'JohnDoe34',
    description: 'Hey everyone! Ive been having a great time showing new people sailing. If anyone else feels inclined to give it a shot too Send a wish my way so I can grant it for ya!',
    wishNum: 1,
    isGrantPost: true
  );

  static const post2 = PostData(
    imagePath: '/images/hikingBootsPost.jpg',
    userName: 'SarahWoman25',
    description: 'Unfortunately my hiking boots have worn out from all the hiking I do. If anyone would be willing to send me a pair they maybe dont use and save me some money I would give you a wish for them!',
    wishNum: 1,
      isGrantPost: false
  );

  static const post3 = PostData(
    imagePath: '/images/skyDivePost.png',
    userName: 'TroyPederson3',
    description: 'So I have decided I am terrified of heights to the point where I cannot get myself to skydive. If anyone else would like to fullfill this dream of theirs I will be selling my sky diving ticket for two wishes. Take it off my hands for me please!',
    wishNum: 2,
    isGrantPost: true
  );
}