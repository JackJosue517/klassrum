import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      required this.fieldController,
      this.isPasswordField,
      required this.labelText,
      required this.icon});
  final TextEditingController fieldController;
  final bool? isPasswordField;
  final IconData icon;
  final String labelText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: widget.isPasswordField != null ? !isVisible : false,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            contentPadding: const EdgeInsets.only(
              left: 20,
              right: 35,
            ),
            hintText: widget.labelText,
            hintStyle: AppText.headline5,
            filled: true,
            fillColor: const Color.fromRGBO(255, 255, 255, 1),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.darkColor),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Color(0xFF1F41BB)),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: widget.isPasswordField != null
                ? IconButton(
                    onPressed: () => setState(() {
                      isVisible = !isVisible;
                    }),
                    icon: isVisible == true
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  )
                : null),
        style: AppText.headline5,
      ),
    );
  }
}
