import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child:Row(
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
              ),
            ),
            const Gap(16),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("notificationModel.notificationTitle", style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black
                  )
                  ),
                  Gap(4),
                  Text("notificationModel.notificationContent",style:  TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black
                  ))
                ],
              ),
            )
          ],
        )
    );
  }
}