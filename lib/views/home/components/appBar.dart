import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_chef_moblie_apa/widgets/iButton.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hi, Anin \nWhat will we order?',
            style: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          ),
          Ibutton(
            icon: Icons.shopping_bag_outlined,
            onClick: () {},
          ),
        ],
      ),
    );
  }
}

// return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       toolbarHeight: 500,
//       leadingWidth: 1000,
//       leading: Text(
//         'Hi, Anin \nWhat will we order?',
//         style: GoogleFonts.aBeeZee(
//           textStyle: const TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             height: 1.5,
//           ),
//         ),
//       ),
//       actions: [
//         Ibutton(
//           icon: Icons.shopping_bag_outlined,
//           onClick: () {},
//         ),
//       ],
//     );
//   }
