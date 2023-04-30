import 'package:busappui/utils/colors.dart';
import 'package:busappui/widgets/bus/bus_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBusListview extends StatelessWidget {
 final String busname,busmodel,bustype;
  const CustomBusListview({super.key,required this.busmodel,required this.busname,required this.bustype});

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
                          child: Image.asset('assets/image 3.png'),
                        ),
      SizedBox(width: 8,),
      SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(busname),
            SizedBox(height: 3,),
            Text(busmodel),
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
                if(bustype=="2x2"){
                  Get.to(BusLayoutScreen(busName: "" ,model: "",type: bustype,)
                  //(busName: busName! ,model: model!,type: type,)
                  );
                }else{
                 Get.to(BusLayoutScreen(busName: "" ,model: "",type: bustype,)
                 //(busName: busName! ,model: model!, type: type,)
                 );
                }
                
              }, child: Text("Manage")),
          )
              ]),
            )
          ],
         ),
      ),
    );
  }
}