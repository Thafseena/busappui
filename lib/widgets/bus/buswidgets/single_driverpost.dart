import 'package:busappui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleDriverPost extends StatelessWidget {
  const SingleDriverPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 335,
      decoration: BoxDecoration(
        color:AppColors.primaryColor ,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rohit sharma",style: TextStyle(color: AppColors.whitecolor,fontWeight: FontWeight.w700,fontSize: 26),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("License no: PJ515196161655",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: AppColors.whitecolor),),
              ),
        
            ],
          ),),
        ),
        Image.asset("assets/driver.png")
      ],),
    );
  }
}