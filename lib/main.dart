import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.deepPurple[800],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: _list.length,
          itemBuilder: ((context, index) => Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: _list[index],
              )),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
              onPressed: () async {
                String newText = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(
                    newText,
                    textAlign: TextAlign.center,
                  ));
                });
              },
              backgroundColor: Colors.deepPurple[800],
              child: Icon(Icons.add));
        }),
      ),
    );
  }
}
