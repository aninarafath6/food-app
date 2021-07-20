import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_chef_moblie_apa/views/home/components/categorys.dart';
import 'package:home_chef_moblie_apa/views/home/components/heading.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heding(),
        SizedBox(height: 20),
        Categorys(),
      ],
    );
  }
}
