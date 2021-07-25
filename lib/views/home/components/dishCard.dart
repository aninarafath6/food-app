import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_chef_moblie_apa/constants/colors.dart';

class DishCard extends StatelessWidget {
  final bool isFavorate;
  final String name;
  final num price;
  final String image;
  final int id;

  const DishCard({
    Key? key,
    required this.isFavorate,
    required this.name,
    required this.price,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
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
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 280,
        width: 100,
        decoration: boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  isFavorate ? Icons.favorite : Icons.favorite_border_rounded,
                  color: isFavorate ? Colors.orange : Colors.grey,
                  size: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .35,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  // maxLines: 2,
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\$ ${price}',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Icon(Icons.add, color: Colors.white)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
