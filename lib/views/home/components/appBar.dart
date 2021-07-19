import 'package:flutter/material.dart';
import 'package:home_chef_moblie_apa/widgets/iButton.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Ibutton(
        icon: Icons.menu,
        onClick: () {},
      ),
      actions: [
        Ibutton(
          icon: Icons.shopping_bag_outlined,
          onClick: () {},
        ),
      ],
    );
  }
}
