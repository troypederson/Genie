class PostData {
  final String imagePath;
  final String userName;
  final String description;
  final int wishNum;
  final bool isGrantPost;

  const PostData({
    required this.imagePath,
    required this.userName,
    required this.description,
    required this.wishNum,
    required this.isGrantPost
  });
}