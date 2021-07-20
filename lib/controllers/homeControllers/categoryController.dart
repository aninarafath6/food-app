import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<String> categorys = ['Pizza', 'Burger', 'Pasta'].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(Duration(seconds: 1));
    var newCategorys = ['KFC'];
    categorys.addAll(newCategorys);
  }

  void selectItem( var index) {
    selectedIndex.value = index;
  }
}
