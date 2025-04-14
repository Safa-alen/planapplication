import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitleWithMoreBut extends StatelessWidget {
  const TitleWithMoreBut({
    super.key,
    required this.press,
  });

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: MaterialButton(
        onPressed: press,
        child: Text(
          "More",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 7,
                color: KPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
