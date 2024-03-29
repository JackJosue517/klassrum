import 'package:flutter/material.dart';
import 'package:klassrum/secrets.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CallArguments;

    return ZegoUIKitPrebuiltCall(
      appID: appID,
      appSign: appSign,
      userID: args.uid,
      userName: args.username,
      callID: args.callID,

      // Modify your custom configurations here.
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall()
        ..avatarBuilder = (BuildContext context, Size size, ZegoUIKitUser? user,
            Map extraInfo) {
          return user != null
              ? Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img/default_profil.jpg'),
                    ),
                  ),
                )
              : const SizedBox();
        },
    );
  }
}

class CallArguments {
  final String uid;
  final String username;
  final String callID;

  CallArguments(this.uid, this.username, this.callID);
}
