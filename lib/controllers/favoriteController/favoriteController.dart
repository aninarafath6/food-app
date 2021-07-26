import 'package:get/get.dart';
import 'package:home_chef_moblie_apa/models/dishModel.dart';

class FavoriteController extends GetxController {
  var favorites = [].obs;

  //add to favorite function
  void addToFavorite(Dish dish) {
    if (favorites.isEmpty) {
      return favorites.add(
        {
          'id': dish.id,
          'dish': dish,
        },
      );
    } else {
      int index = favorites.indexWhere((item) => item['id'] == dish.id);
      if (index < 0) {
        favorites.add(
          {
            'id': dish.id,
            'dish': dish,
            'qty': 1,
          },
        );
      } else {
        favorites.removeAt(index);
      }
    }
    print(favorites);
  }

  int isAdded(int id) {
    return favorites.indexWhere((element) => element['id'] == id);
  }
}
