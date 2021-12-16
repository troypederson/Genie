import '../models/user.dart';

class UserPreferences {
  static const myUser = User(
    imagePath:
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    name: 'Some Person',
    email: 'some.person@gmail.com',
    about:
    'Just some person doing some stuff. I enjoy hiking, swimming, and other things that people do.',
    isDarkMode: false,
  );
}