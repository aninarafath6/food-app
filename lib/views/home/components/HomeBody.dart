import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:home_chef_moblie_apa/controllers/dishesController/dishController.dart';
import 'package:home_chef_moblie_apa/views/home/components/appBar.dart';
import 'package:home_chef_moblie_apa/views/home/components/categorys.dart';
import 'package:home_chef_moblie_apa/views/home/components/dishCard.dart';

class HomeBody extends StatelessWidget {
  DishController dishController = Get.put(DishController());
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
            child: GetX<DishController>(builder: (controller) {
              return Container(
                child: controller.isLoading.value
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Colors.orange,
                      ))
                    : StaggeredGridView.countBuilder(
                        physics: BouncingScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        itemCount: controller.totalDishes,
                        itemBuilder: (context, index) {
                          return DishCard(dish: controller.dishes[index]);
                        },
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.fit(1),
                      ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
