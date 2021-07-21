import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_chef_moblie_apa/constants/colors.dart';
import 'package:home_chef_moblie_apa/views/home/components/appBar.dart';
import 'package:home_chef_moblie_apa/views/home/components/categorys.dart';
import 'package:home_chef_moblie_apa/views/home/components/heading.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // heding(),
        HomeAppBar(),
        SizedBox(height: 20),
        Categorys(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: StaggeredGridView.countBuilder(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 280,
                    width: 100,
                    decoration: BoxDecoration(
                      color: primeryLight,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      border: Border.all(
                        width: .2,
                        color: Colors.white30,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          spreadRadius: 2,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
            ),
          ),
        ),
      ],
    );
  }
}
