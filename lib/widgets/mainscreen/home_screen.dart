import 'package:busappui/utils/colors.dart';
import 'package:busappui/widgets/busimage_container.dart';
import 'package:busappui/widgets/buslist_container.dart';
import 'package:busappui/widgets/driverimage_container.dart';
import 'package:busappui/widgets/driverview/displaylist_driver.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(
        backgroundColor: AppColors.blackcolor,
        leading: Text(""),
        centerTitle: true,
        title: Column(
          children: [
             const SizedBox(height: 31,),
            Stack(
              children: [
                Image.asset('assets/moovbe.png',height: 26,width: 126,),
                Positioned(
                   left: 98,
                      top: -5,
                  child: Image.asset('assets/Polygon 1 (1).png',height: 16,width: 14,))
              ],
            )
          ],
        ),
        ), 
        preferredSize: const Size.fromHeight(90)),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BusContainerImage(image: 'assets/image 2.png', name: 'Bus', purpose: 'Manage your Bus'),
                // InkWell(
                //   onTap: (){
                //     Get.to(DriverListPage());
                //   },
                 // child: 
                  DriverContainerImage(image: 'assets/driver.png', name: 'Driver', purpose: 'Manage your Driver',
                  onTap: () {
                    Get.to(DriverListPage());
                  },)
                  //)
                 ],
            ),
              Padding(
          padding: const EdgeInsets.all(10.0),
          //child: Text("${busList.length} Buses Found"),       
        ),
        const SizedBox(height: 20,),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 7,
          itemBuilder: (ctx,index){
           // final data = busList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomBusListview(busmodel: "Swift Scania P-series", busname:"KSRTC", bustype: "")
            );
          })
          
            
          ],
        )
      )
    );
  }
}
/* SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount:2,
              crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(2, (index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/image 2.png'),
                  fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ),);
          } ),
               )
          ],
        ),
      ), */