import 'package:flutter/material.dart';

import 'call.dart';
import 'community.dart';
import 'join.dart';

import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "dd",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime now1 = DateTime.now();
  String localUserID = math.Random().nextInt(100000).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.group)),
                Tab(icon: Icon(Icons.join_full)),
                Tab(icon: Icon(Icons.call)),
              ],
            ),
            title: Text('Omegle Clone'),
          ),
          body: TabBarView(
            children: [
              community(),
              join(),
              call(
                docid: localUserID,
                now: now1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
