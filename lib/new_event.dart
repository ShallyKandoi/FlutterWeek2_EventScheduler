import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor: Colors.deepPurple[800],
      ),
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 350,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  labelText: 'Event',
                  labelStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  fillColor: Colors.deepPurple[800],
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.today,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                controller: _textEditingController,
                maxLines: null,
              ),
            ),
          ),
          SizedBox(height: 15),
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                String newEventText = _textEditingController.text;
                Navigator.of(context).pop(newEventText);
              },
              child: Text("ADD"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[200],
                padding: EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            );
          }),
        ],
      ),
      // ),
    );
  }
}
