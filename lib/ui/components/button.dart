import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, required this.btnFunction, required this.btnText});
  final String btnText;
  final VoidCallback btnFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: btnFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        child: Center(
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: AppText.headline3.copyWith(
              color: AppColors.trueWhiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
