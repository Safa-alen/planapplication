import 'package:flutter/material.dart';

import '../../../constant.dart';

class RecomendsPlant extends StatelessWidget {
  const RecomendsPlant({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantcard(
            size: size,
            image: "assets/download.jpg",
            title: "samantha",
            country: "russia",
            price: 440,
            press: () {},
          ),
          RecomendPlantcard(
            size: size,
            image: "assets/download1.jpg",
            title: "samantha",
            country: "russia",
            price: 440,
            press: () {},
          ),
          RecomendPlantcard(
            size: size,
            image: "assets/images.jpg",
            title: "samantha",
            country: "russia",
            price: 440,
            press: () {},
          ),
          RecomendPlantcard(
            size: size,
            image: "assets/download.jpg",
            title: "samantha",
            country: "russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantcard extends StatelessWidget {
  const RecomendPlantcard({
    super.key,
    required this.size,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final Size size;
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: KDefaultPadding,
          top: KDefaultPadding / 2,
          bottom: KDefaultPadding * 2.5),
      width: size.width * 0.45,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(KDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: KPrimaryColor.withOpacity(0.23)),
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.bodyMedium),
                    TextSpan(
                        text: country.toUpperCase(),
                        style:
                            TextStyle(color: KPrimaryColor.withOpacity(0.5))),
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: TextStyle(
                        color: KPrimaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
