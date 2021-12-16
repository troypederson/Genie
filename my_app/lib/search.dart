
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/thread.dart';
import '/utils/threads.dart';
import '/models/threadData.dart';


class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userThread1 = Allthreads.thread1;
    final userThread2 = Allthreads.thread2;
    final userThread3 = Allthreads.thread3;
    var threads = <ThreadData>[userThread1, userThread2, userThread3];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Search for posts or threads"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          })
        ]
      ),
          drawer: Drawer(),
          body: Column(
              //physics: BouncingScrollPhysics(),
              children: <Widget>[
                Text(" "),
                Text("Your Saved Threads: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                Text(" "),
                Threads(threads),
                Text(" "),
                Image.asset('images/genieIcon.png', scale: 2.0),
              ])
    );
  }
}

class DataSearch extends SearchDelegate<String>{
  final activities = [
    "hiking",
    "swimming",
    "biking",
    "skiing",
    "sky diving",
    "hot air balloon",
    "dirt biking",
    "fishing",
    "travel",
    "museums",
    "rock climbing",
    "wine tasting",
    "surfing",
    "snowboarding",
    "hang gliding",
    "ziplining",
    "flying",
    "animal",
    "people",
    "friend",

  ];

  final recentSearches = [
    "swimming",
    "hiking"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon of the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    var threads = Allthreads.threads;
    var matchedThreads = threads.where((p)=>p.name.toLowerCase().contains(query.toLowerCase()) ||
        p.description.toLowerCase().contains(query.toLowerCase())).toList();
    // show some result based on selection
    return Center(
      child: Container(
         height:1000,
         width:1000,
         child: Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(1),
            ),
            //child: Text(" matched thread size was "+matchedThreads.length.toString(), style: TextStyle(color: Colors.white, fontSize: 24))
            child: Column(
              children: [
                Threads(matchedThreads),
                Text(" "),
                Text(" "),
                Image.asset('images/genieIcon.png', scale: 2.0),
                Text(matchedThreads.length.toString()+" results!", style: TextStyle(color: Colors.white, fontSize: 24))
         ])
         ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ?recentSearches
        :activities.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      onTap: () {
        //this would take care of clicking on a suggested thread
        query = suggestionList[index];
        showResults(context);
      },
      leading: Icon(Icons.auto_awesome),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [TextSpan(
          text: suggestionList[index].substring(query.length),
          style: TextStyle(color: Colors.grey))
        ]),
      ),
    ),
      itemCount: suggestionList.length,
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
