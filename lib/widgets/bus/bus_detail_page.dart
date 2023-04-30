import 'package:busappui/widgets/bus/buswidgets/bus_1_by_3.dart';
import 'package:busappui/widgets/bus/buswidgets/bus_2_by_2.dart';
import 'package:busappui/widgets/bus/buswidgets/single_driverpost.dart';
import 'package:busappui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BusLayoutScreen extends StatelessWidget {
  const BusLayoutScreen({super.key,this.busName,this.model,this.type});
final String? busName,model,type;
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      text: 'busname',
      body:  SingleChildScrollView(child: Column(
        children: [
           const Padding(
             padding: EdgeInsets.all(20.0),
             child: SingleDriverPost(),
           ),

        
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: type=="1x3"? Busseats1x3():Busseats2x2(),
              )),
          ),
        ],
      ),), //bottomNavigationBar: null,
    );
  }
}