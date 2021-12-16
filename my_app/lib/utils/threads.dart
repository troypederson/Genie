
import '../models/threadData.dart';

//eventually would get posts from backend database of all posts that mach a users interests
//for now there are just static example posts
class Allthreads {
  static const thread1 = ThreadData(
      name: 'Da Yacht Club',
      description: 'A series of posts and conversations all relating to boats!',
  );

  static const thread2 = ThreadData(
      name: 'Safari Zone',
      description: 'Animal lovers who are looking to do some world traveling in hopes of seeing some of their favorite animals',
  );

  static const thread3 = ThreadData(
      name: 'Just need a friend',
      description: 'People who are so desperate for comapny we are willing to pay you in wishes to do stuff with us',
  );

  static const thread4 = ThreadData(
    name: 'Swim with Dolphins',
    description: 'This group is full of people who love these beautiful animals and would like to swim alongside them',
  );

  static const thread5 = ThreadData(
    name: 'Party Animals',
    description: 'We like to party! Not much else to say. If youre interested in attending one of our special events message us',
  );

  static const thread6 = ThreadData(
    name: 'Backpacking Adventurers',
    description: 'join this group on the great PCT backpack hiking adventure',
  );

  static const thread7 = ThreadData(
    name: 'people doing stuff',
    description: 'just some real people doing things that real people do in real life being really real'
  );

  static const threads = <ThreadData>[thread1, thread2, thread3, thread4, thread5, thread6, thread7];
}