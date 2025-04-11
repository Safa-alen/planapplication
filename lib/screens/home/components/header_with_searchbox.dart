import 'package:flutter/material.dart';
import 'package:planapp/constant.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: KDefaultPadding),
      height: size.height*0.2,//صار عندي مستطيل ضعف العنوان يلي فوق
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: KDefaultPadding,right: KDefaultPadding,bottom: 36+KDefaultPadding),
            height: size.height*0.2-27,
            decoration: BoxDecoration(
    
              color: KPrimaryColor,
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36)),
              
            ),
            child: Row(
    
              children: [
               // Padding(padding: EdgeInsets.only(right: KDefaultPadding)),
                Text("Hi Uishopy!",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                )),
                Spacer(),
                Container(
                  width: 50,
                height: 50,
                //decoration: BoxDecoration(
                 // borderRadius: BorderRadius.all(Radius.circular(50))
               // ),
                  
                  child:ClipRRect (borderRadius: BorderRadius.circular(100),
                    
                    child: Image.asset("assets/download.png",fit: BoxFit.cover,))),
                   // Padding(padding: EdgeInsets.only(left: KDefaultPadding))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
      
            height: 54,
            margin: EdgeInsets.symmetric(horizontal: KDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(offset: Offset(0, 10),
                blurRadius: 50,
                color: KPrimaryColor.withOpacity(0.23))
              ]
              
            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon:Icon(Icons.search,color: KPrimaryColor.withOpacity(0.23),size: 30,) ,
                hintText: "search",
                hintStyle: TextStyle(
                  color: KPrimaryColor.withOpacity(0.5)//متل الخيال بيطلع
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
    
            ),
          ))
        ],
      ),
    );
  }
}