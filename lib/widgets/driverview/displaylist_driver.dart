import 'package:busappui/utils/colors.dart';
import 'package:busappui/widgets/bottomappbar.dart';
import 'package:busappui/widgets/custom_app_bar.dart';
import 'package:busappui/widgets/driver_list_container.dart';
import 'package:busappui/widgets/driverview/add_driver_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverListPage extends StatelessWidget {
  const DriverListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      text: "Driver List",
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("21 Drivers Found",
              style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 13,
              color:Color(0xFF757575)
              //Color(0x8AFFFFFF),
              ),)
            ),
            const SizedBox(height: 10,),
            ListView.builder(
             shrinkWrap: true,
             physics: ScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomBusDriverListview(name: "Rohit sharma", licenseno: "Licn no: PJ5151961616", 
                  onTap: (){
                   
                  })
                );


            })

          ],
        ),
      ),
      //body:
       bottomNavigationBar: CustomBottomAppBar(
        name: "Add Driver", 
        onTap: (){
          Get.to(AddDriverPage());
       })
      );
    
  }
}