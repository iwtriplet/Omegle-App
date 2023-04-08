import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

import 'mainscreen.dart';

class call extends StatefulWidget {
  String docid;
  DateTime now;
  call({required this.docid, required this.now});

  @override
  State<call> createState() => _callState(docid: docid, now: now);
}

class _callState extends State<call> {
  String docid;
  DateTime now;
  _callState({required this.docid, required this.now});
  TextEditingController call = TextEditingController();

  @override
  void initState() {
    call = TextEditingController(text: (docid + now.toString()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            onTap: () {},
            title: Text("Copy the Id"),
          ),
          TextField(
            enabled: false,
            controller: call,
            // controller: diaryControllerWithPackageOne,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return VideoConferencePage(
                          localUserID: docid,
                          conferenceID: call.text,
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
              TextButton(
                onPressed: () async {
                  FlutterClipboard.copy(call.text);
                },
                child: Icon(Icons.copy),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
