import 'package:busappui/widgets/bottomappbar.dart';
import 'package:busappui/widgets/custom_app_bar.dart';
import 'package:busappui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddDriverPage extends StatelessWidget {
  const AddDriverPage({super.key});

  @override
  Widget build(BuildContext context) {
     final TextEditingController namecontroller = TextEditingController();
      final TextEditingController licenseNumbercontroller = TextEditingController();
    return CustomAppBar(
      text: 'Add Driver',
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(child: Column(
            children: [
              CustomTextFormField(hintText: "", labelText: "Enter Name", controller: namecontroller),
              const SizedBox(height: 20,),
              CustomTextFormField(hintText: "", labelText: "Enter License Number", controller: licenseNumbercontroller)
            ],
          )),
        )

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(name: 'Save', onTap: (){

      }),
    );
  }
}