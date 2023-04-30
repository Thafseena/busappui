import 'package:busappui/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  Widget? body,bottomNavigationBar;

 CustomAppBar({super.key,required this.text,required this.body, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   PreferredSize(
            preferredSize:const Size.fromHeight(90),
            child: 
            AppBar(
               backgroundColor: AppColors.blackcolor,
              centerTitle: true,
              title: Text(text),
            ),

          ),
          body: body,
          bottomNavigationBar: bottomNavigationBar,
          
    );
  }
}