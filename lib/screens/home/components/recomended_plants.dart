import 'package:flutter/material.dart';
import 'package:planapp/constant.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/download.jpg",
            title: ' Samantha',
            country: ' Russia',
            price: 400,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/images1.jpg",
            title: ' Samantha',
            country: ' Russia',
            price: 400,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/download1.jpg",
            title: ' Samantha',
            country: ' Russia',
            price: 400,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/images7.jpg",
            title: ' Samantha',
            country: ' Russia',
            price: 400,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: KDefaultPadding,
          top: KDefaultPadding / 2,
          bottom: KDefaultPadding * 2),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
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
                      color: KPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.toUpperCase(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        country,
                        style: TextStyle(color: KPrimaryColor.withOpacity(0.5)),
                      )
                    ],
                  ),
                  Text(
                    '  \$$price\n',
                    style: TextStyle(
                        color: KPrimaryColor, fontWeight: FontWeight.bold),
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
