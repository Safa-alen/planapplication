import 'package:flutter/material.dart';
import 'package:planapp/constant.dart';
import 'package:planapp/screens/home/components/header_with_searchbox.dart';
import 'package:planapp/screens/home/components/title_text_andmore.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;//
    return SingleChildScrollView(
      child: Column(
        children: [
      
          HeaderWithSearchBox(size: size),
          TitleTextandMore(),
          Container(
            marg
          width: size.width*0.4,
          child: Column(children: [

            Image.asset("assets\download.jpg"),
            Cont
          ],),
          )


          
        ],
        

        )
      );

    
  }
}

