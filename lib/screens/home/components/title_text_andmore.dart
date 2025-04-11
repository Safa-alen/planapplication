import 'package:flutter/material.dart'; 
   
  
import '../../../constant.dart';
  
 class TitleTextandMore extends StatelessWidget {
  const TitleTextandMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(text: "Recomended",),
          Spacer(),
          TitleWithMoreBut(title: 'More', press: (){},)
        ],
      ),
    );
  }
}

class TitleWithMoreBut extends StatelessWidget {
  const TitleWithMoreBut({
    super.key, required this.title, required this.press,
  });
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(height: 30,
    
      decoration: BoxDecoration(
      color: KPrimaryColor,
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
      child: MaterialButton(onPressed: (){},
      child: Text(title,style: TextStyle(
        color: Colors.white
          
        
      ),),
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    super.key, required this.text,
    
  
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 24,
      child: Stack(
        children: [
          Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
    
            child:Container(
              height: 7,
              color: KPrimaryColor.withOpacity(0.2),
            ) 
          )
        ],
      ),
    );
  }
}

