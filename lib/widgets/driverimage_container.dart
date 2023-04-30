import 'package:busappui/utils/colors.dart';
import 'package:flutter/material.dart';

class DriverContainerImage extends StatelessWidget {
  final String name,purpose,image;
  Color? bgcolor;
  VoidCallback onTap;
   DriverContainerImage({super.key,required this.image,
   required this.name,required this.purpose,this.bgcolor,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
     // flex: 1,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          height:176,
          width: 158,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.blackcolor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(padding:  const EdgeInsets.only(left:10),
               child: SizedBox(
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style:  const TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Color(0xFAFAFAFF)),),
                    Text(purpose,style: const TextStyle(fontSize: 12, color: Color(0xFAFAFAFF)),),
                  ],
                ),
               ),),
               InkWell(
                onTap: onTap,
                 child: Container(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(image,height: 130,width: 143,fit: BoxFit.fitHeight,),
                 ),
               )
            ],
          ),
    
        ),
      ),
    );
  }
}