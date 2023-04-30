import 'package:busappui/utils/colors.dart';
import 'package:busappui/utils/dimensions.dart';
import 'package:busappui/widgets/custom_textfield.dart';
import 'package:busappui/widgets/bottomappbar.dart';
import 'package:busappui/widgets/mainscreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usercontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 266,
                  color: AppColors.blackcolor,
                  child: Container(
                     height: 260,
                     child:Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/Polygon 1.png')),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Positioned(
                  left: 25,
                  bottom: 8,
                  top: 130,
                  //padding: EdgeInsets.only(left: 25, bottom: 8),
                  child: Text("Welcome",style: TextStyle(fontSize: Dimensions.font40,color: AppColors.whitecolor),)),
                  Padding(
                    padding:EdgeInsets.only(left: 30, bottom: 8,top: 185),
                    child: Text("Manage your Bus and Drivers",style: TextStyle(fontSize: Dimensions.font16,color: AppColors.whitecolor),),
                     ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              child: Column(
              children: [
                CustomTextFormField(
                  hintText:"" ,
                  labelText: "Username",
                  controller: usercontroller,
                  keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 30,
                  ),
               CustomTextFormField(
                  hintText:"" ,
                  labelText: "Password",
                  controller: passwordcontroller,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(name: "Login",
      
       onTap: (){
        Get.to(HomeScreen());

      }),
      /* bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(35.0),
        child: BottomAppBar(
          // color: AppColors.textredcolor,
          elevation: 0,
          child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 58,width: 316),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.textredcolor
              ),
              onPressed: (){},
               child: Text('Login')),
          ),
        ),
      ), */
    );
  }
}

/* return Scaffold(
      body: Column(
        children: [
          Container(
            height: 266,
            color: AppColors.blackcolor,
            child: Container(
               height: 260,
               child:Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/Polygon 1.png')),
               
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              /* decoration:BoxDecoration(
                //image: DecorationImage(
                // image: Image.asset('assets/Polygon 1.png'),
               // fit: BoxFit.cover
                ),
              ),
              child: Image.asset('assets/Polygon 1.png'), 
              /* Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/busimage.png'),
                    height: 170,
                    width: 170,)
                ],
              ) */
            //), */
            ),
          ),
        ],
      )
    ); */