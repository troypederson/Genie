import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat_example/model/user.dart';
import 'package:my_app/models/user.dart';

class FireBaseAPi {
  static Stream<List<User>> getUsers() => FirebaseFirestore.instance;
}