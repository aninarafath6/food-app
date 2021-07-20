import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Padding heding() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Text(
      'Hi, Anin \nWhat will we order?',
      style: GoogleFonts.aBeeZee(
        textStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
