import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoConferencePage extends StatelessWidget {
  final String conferenceID;
  final String localUserID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
    required this.localUserID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID:  enter your appID,
        appSign:
            'enter your appSign ',
        userID: localUserID,
        userName: "userfe3_$localUserID",
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
