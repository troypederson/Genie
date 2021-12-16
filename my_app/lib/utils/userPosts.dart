import '../models/postPreviewData.dart';

//previews of a users post for display in the users profile page
class UserPosts {
  static const post1 = PostPreviewData(
      imagePath: '/images/bikePostPreview.jpg',
      wishNum: 1,
      isGrantPost: true
  );

  static const post2 = PostPreviewData(
      imagePath: '/images/swimmingPostPreview.jpg',
      wishNum: 1,
      isGrantPost: false
  );

  static const post3 = PostPreviewData(
      imagePath: '/images/hikingPostPreview.jpg',
      wishNum: 2,
      isGrantPost: true
  );

  static const post4 = PostPreviewData(
    imagePath: 'images/hikingGearPostPreview.jpg',
    wishNum: 3,
    isGrantPost: false
  );

}