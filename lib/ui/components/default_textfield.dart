import 'package:flutter/material.dart';

class DefaultTextField extends StatefulWidget {
  DefaultTextField({super.key, required this.fieldController, this.isPasswordField, required this.labelText});
  final TextEditingController fieldController ;
  bool? isPasswordField;
  final String labelText;

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 56,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,

        obscureText: widget.isPasswordField!=null?!isVisible:false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(

              left: 20,
              right: 35,

            ),
            hintText: widget.labelText,
            hintStyle: const TextStyle(
              color: Color(0xFF616161),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
            filled: true,
            fillColor: const Color(0xFFF1F4FF),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
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
            suffixIcon:widget.isPasswordField!=null? IconButton(
              onPressed: () => setState(() {
                isVisible = !isVisible;
              }),
              icon: isVisible==true?const Icon(Icons.visibility_off):const Icon(Icons.visibility),
            ):null
        ),
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
