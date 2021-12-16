import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Thread extends StatelessWidget {
  final String name;
  final String description;

  const Thread({
    Key? key,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ButtonTheme(
        minWidth: 200.0,
        height: 100.0,

        child: SizedBox(
            height: 60,
            width: 2000,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                side: BorderSide(
                width: 2.0,
                color: Colors.black
            )
            ),
          onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) => OpenedThread(context),
             );
          },
          child: Column( children: <Widget> [
            Align(alignment: Alignment(-1, -0.6), child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black))),
            Align(alignment: Alignment(-1, 0), child: Text(description))
          ] )
        )
        ),
      );
}

Widget OpenedThread(BuildContext context) {
  return new Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1),
      ),
      child: Container(
        color: Colors.green,
      child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
                  child: Align(
                      alignment: Alignment(-1,0),
                      child: Text("<- Back", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white))
                  ),
            ),
            SizedBox(height: 16),
            Image.asset('images/genieIcon.png', scale: 2.0),
          ]),
      ),
  );
}

