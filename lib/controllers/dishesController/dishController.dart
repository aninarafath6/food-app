import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_chef_moblie_apa/models/dishModel.dart';

class DishController extends GetxController {
  var dishes = [].obs;
  int get totalDishes => dishes.length;
  var isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAllDishes();
  }

  void fetchAllDishes() {
    isLoading.toggle();
    Future.delayed(Duration(seconds: 2)).then(
      (value) {
        isLoading.toggle();
        print(value);
        var response = [
          Dish(
            id: 1,
            dishName: 'Pizza with Mussels',
            dishCategory: 'Pizza',
            dishPrice: 5.99,
            dishDescreprion: 'this is a pizza',
            dishImage: 'assets/images/dish1.png',
          ),
          Dish(
            id: 2,
            dishName: 'Thin chees Pizza',
            dishCategory: 'Pizza',
            dishPrice: 3.99,
            dishDescreprion: 'this is a pizza',
            dishImage: 'assets/images/dish2.png',
          ),
          Dish(
            id: 3,
            dishName: 'Vegteble Pizza',
            dishCategory: 'Pizza',
            dishPrice: 6.87,
            dishDescreprion: 'this is a pizza',
            dishImage: 'assets/images/dish3.png',
          ),
          Dish(
            id: 4,
            dishName: 'Chicken Pizza',
            dishCategory: 'Pizza',
            dishPrice: 5.87,
            dishDescreprion: 'this is a pizza',
            dishImage: 'assets/images/dish4.png',
          ),
          Dish(
            id: 5,
            dishName: 'Special egg Pizza',
            dishCategory: 'Pizza',
            dishPrice: 4.35,
            dishDescreprion: 'this is a pizza',
            dishImage: 'assets/images/dish5.png',
          ),
          Dish(
            id: 6,
            dishName: 'Beef Pizza',
            dishCategory: 'Pizza',
            dishPrice: 9.26,
            dishDescreprion: 'this is a pizza',
            dishImage: 'assets/images/dish6.png',
          ),
        ];
        dishes.value = response;
      },
    );
  }
}
