import 'dart:async';

//import 'package:busappui/loginscreen.dart';
import 'package:busappui/utils/colors.dart';
import 'package:busappui/utils/dimensions.dart';
import 'package:busappui/widgets/bottomappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState(){
    super.initState();
    controller=AnimationController(
      vsync: this,
      duration: Duration(seconds: 2))..forward();
      animation=CurvedAnimation(parent: controller, 
      curve: Curves.linear);
      // Timer(Duration(seconds: 3), () {
      //   Get.offNamed('login');
      // });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroungcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ScaleTransition(
              scale: animation,
              child: Stack(
                children: [
                    Image.asset('assets/moovbe.png'),
                    Positioned(
                      left: 160,
                      top: -5,
                      child:Image.asset('assets/Polygon 1 (1).png') )
                  ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          // Container(
          //   height: 50,
          //   width: 150,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //      color:AppColors.whitecolor,
          //   ),
          //   child: TextButton(onPressed: () {
          //     Get.offNamed('');
          //   },
          //   child: Text("Get Started",style: TextStyle(fontSize: Dimensions.font16,
          //   color: AppColors.textredcolor),),),
          //   ),
           
            /* child: Text("Get Started",
            style: TextStyle(fontSize: Dimensions.font16,
            color: AppColors.textredcolor),)) */
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(name: "Get Started",
      bgcolor: AppColors.whitecolor,
      textcolor: AppColors.textredcolor, 
      onTap: (){
        Get.offNamed('login'); 
      }),
    );
  }
}