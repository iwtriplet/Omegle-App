import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'mainscreen.dart';

String localUserID = math.Random().nextInt(100000).toString();

class community extends StatefulWidget {
  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Join any Community',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "Stock Market",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "Stock Market",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "Programming",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "Programming",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "Economy",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "Economy",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "Laws",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "Laws",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "History",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "History",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "Politics",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "Politics",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        localUserID: localUserID,
                        conferenceID: "Movie",
                      );
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: Colors.indigo[100],
              title: Text(
                "Movie",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
