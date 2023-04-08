import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'mainscreen.dart';

String localUserID = math.Random().nextInt(100000).toString();

class join extends StatefulWidget {
  @override
  State<join> createState() => _joinState();
}

class _joinState extends State<join> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter Your Intrest',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 40,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return VideoConferencePage(
                      localUserID: localUserID,
                      conferenceID: name.text,
                    );
                  },
                ),
              );
            },
            child: Text(
              "Join",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
              ),
            ),
            color: Colors.indigo[900],
          ),
        ],
      )),
    );
  }
}
