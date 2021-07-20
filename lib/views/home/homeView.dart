import 'package:flutter/material.dart';
import 'package:home_chef_moblie_apa/views/home/components/HomeBody.dart';
import 'package:home_chef_moblie_apa/views/home/components/appBar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: HomeAppBar(),
      ),
      body: HomeBody(),
    );
  }
}
