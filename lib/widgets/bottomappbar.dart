import 'package:busappui/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
         CustomBottomAppBar({super.key,required this.name,
//required this.bgcolor,
this.bgcolor=const Color(0xFFD32F2F),
required this.onTap,
//required this.textcolor
this.textcolor=const Color(0xFAFAFAFF)
});
  String name;
  VoidCallback onTap;
  Color? bgcolor,textcolor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(35.0),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
         child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(height: 58,width: 316),
           child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: bgcolor,
            ),
            onPressed: onTap,
             child:Text(name,
             style: TextStyle(color: textcolor,fontWeight: FontWeight.w500,fontSize: 20),
             )),
         ),
      ),
    );
  }
}