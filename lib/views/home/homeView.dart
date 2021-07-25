import 'package:flutter/material.dart';
import 'package:home_chef_moblie_apa/views/home/components/HomeBody.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeBody()),
    );
  }
}
