import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.btnFunction, required this.btnText});
final String btnText;
final VoidCallback btnFunction;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed:btnFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1F41BB), // Couleur de fond du bouton
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0, // Ajoute une ombre au bouton
        ),
        child:  Center(
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
