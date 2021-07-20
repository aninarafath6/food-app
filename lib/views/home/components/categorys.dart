import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_chef_moblie_apa/controllers/homeControllers/categoryController.dart';

// ignore: must_be_immutable
class Categorys extends StatefulWidget {
  @override
  _CategorysState createState() => _CategorysState();
}

class _CategorysState extends State<Categorys> {
  CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: GetX<CategoryController>(
          builder: (controller) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: controller.categorys.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: GestureDetector(
                    onTap: () {
                      categoryController.selectItem(index);
                      setState(() => {});
                    },
                    child: Text(
                      controller.categorys[index],
                      style: GoogleFonts.mulish(
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: controller.selectedIndex.value == index
                              ? Colors.orange
                              : Colors.white60,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
