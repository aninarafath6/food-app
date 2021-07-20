import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            heding(),

          ],
        ),
      ),
    );
  }

  Text heding() {
    return Text(
            'Hi, Anin \nWhat will we order?',
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          );
  }
}
