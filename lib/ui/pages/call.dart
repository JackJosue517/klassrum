import 'package:flutter/material.dart';
import 'package:klassrum/secrets.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CallArguments;

    return ZegoUIKitPrebuiltCall(
      appID: appID as int,
      appSign: appSign,
      userID: args.uid,
      userName: args.username,
      callID: args.callID,
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall(),
    );
  }
}

class CallArguments {
  final String uid;
  final String username;
  final String callID;

  CallArguments(this.uid, this.username, this.callID);
}
