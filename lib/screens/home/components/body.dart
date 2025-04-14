import 'package:flutter/material.dart';
import 'package:planapp/constant.dart';
import 'package:planapp/screens/home/components/header_with_searchbox.dart';
import 'package:planapp/screens/home/components/recomended_plants.dart';
import 'package:planapp/screens/home/components/title_text_andmore.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //
    return SingleChildScrollView(
        child: Column(
      children: [
        HeaderWithSearchBox(size: size),
        Padding(
          padding: const EdgeInsets.only(
              left: KDefaultPadding, right: KDefaultPadding),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TitleWithCustomUnderLine(text: "Recomended"),
            Spacer(),
            TitleWithMoreBut(
              press: () {},
            ),
          ]),
        ),
        RecomendsPlants(),
        Padding(
          padding: const EdgeInsets.only(
              left: KDefaultPadding, right: KDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TitleWithCustomUnderLine(text: "Featured Plants"),
              Spacer(),
              TitleWithMoreBut(
                press: () {},
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FeaturedPlantsCard(
                image: "assets/download9.jpg",
                press: () {},
              ),
              FeaturedPlantsCard(
                image: "assets/download.webp",
                press: () {},
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard({
    super.key,
    required this.image,
    required this.press,
  });
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: KDefaultPadding,
            top: KDefaultPadding / 2,
            bottom: KDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
