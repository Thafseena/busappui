import 'package:busappui/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomBusDriverListview extends StatelessWidget {
 final String name,licenseno;
 VoidCallback onTap;
   CustomBusDriverListview({super.key,required this.name,required this.licenseno,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
         height: 90,
         width: double.maxFinite,
         decoration: BoxDecoration(
          border: Border.all(color: Color(0x1F000000)),
          color: AppColors.greyshade1,
          borderRadius: BorderRadius.circular(15.0)
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                        Container(
                          height: 400,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15))
                          ),
                          //color: Color(0xFFE0E0E0),
                          child:CircleAvatar (
                            child: Image.asset('assets/Ellipse (1).png')),
                        ),
      SizedBox(width: 8,),
      SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name),
            SizedBox(height: 3,),
            Text(licenseno),
          ],
        ),
      ),
       Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.backGroungcolor,
              ),
              onPressed: (){
                // if(type=="2x2"){
                //   Get.to(BusDetailslayout2(busName: busName! ,model: model!,type: type,));
                // }else{
                //  Get.to(BusDetailslayout2(busName: busName! ,model: model!, type: type,));
                // }
                
              }, child: Text("Delete")),
          )
              ]),
            )
          ],
         ),
      ),
    );
  }
}