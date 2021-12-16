
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/thread.dart';
import '/utils/threads.dart';
import '/models/threadData.dart';

class SavedThreadsPage extends StatefulWidget {
  @override
  SavedThreadsPageState createState() => SavedThreadsPageState();
}

class SavedThreadsPageState extends State<SavedThreadsPage> {
  @override
  Widget build(BuildContext context) {
    final userThread1 = Allthreads.thread1;
    final userThread2 = Allthreads.thread2;
    final userThread3 = Allthreads.thread3;
    var threads = <ThreadData>[userThread1, userThread2, userThread3];
    //see if the search term is an existing thread name

    return Scaffold(
      //appBar: buildAppBar(context),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          //where all of the threads go
          Threads(threads),
          //Image.asset('images/genieIcon.png', scale: 2.0),
        ],
      ),
    );
  }

}

Widget Threads(threadResults) {
  var threadList = <Widget>[];
  if(threadResults.length==0){
    return Text("no Results");
  }
  for (var i = 0; i < threadResults.length; i++) {
    threadList.add(
        new Thread(
          name: threadResults[i].name,
          description: threadResults[i].description,
        )
    );
  }
  return new Column(children: threadList);
}