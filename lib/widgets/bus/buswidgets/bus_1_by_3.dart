import 'package:busappui/widgets/bus/buswidgets/bus_seat_layout.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Busseats1x3 extends StatefulWidget {
  const Busseats1x3({Key? key}) : super(key: key);

  @override
  _BusseatsState createState() => _BusseatsState();
}

class _BusseatsState extends State<Busseats1x3> {
  var _chairStatus = [
    [ 0, 0, 0, 0, 0, 5],
    [ 1, 1, 1, 3, 1, 1],
    [ 1, 1, 1, 1, 3, 3],
    [2, 2, 1, 3, 1, 1],
    [ 1, 1, 1, 1, 1, 1],
    [ 1, 1, 1, 1, 1, 1],
    [ 1, 1, 1, 1, 1, 1],
    [ 1, 1, 1, 1, 1, 1],
    [ 1, 1, 1, 1, 1, 1],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          for (int i = 0; i < 9; i++)
            Container(
              margin: EdgeInsets.only(top: i == 0 ? 50 : 0),
              child: Row(
                children: <Widget>[
                  for (int x = 1; x < 7; x++)
                    Expanded(
                      child:(x == 2) ||(x==3)
                          ? Container()
                          : Container(
                              margin: EdgeInsets.all(5),
                              child: _chairStatus[i][x-1]==5?driverChair(1, 1): _chairStatus[i][x - 1] == 1
                                  ? availableChair(i, x - 1)
                                  : _chairStatus[i][x - 1] == 2
                                      ? selectedChair(i, x - 1)
                                      : _chairStatus[i][x-1]==0?blank(): reservedChair(),
                            ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget selectedChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 1;
        setState(() {});
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(3.0)),
      ),
    );
  }

  Widget availableChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 2;
        setState(() {});
      },
      child: BusSeatLayout(image1: "assets/Union.png", image2: "assets/Rectangle 661.png")
     
    );
  }
   Widget driverChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 2;
        setState(() {});
      },
      child: BusSeatLayout(image1: "assets/UnionBalck.png", image2: "assets/Rectangle 661BLack.png")
     
    );
  }

  Widget reservedChair() {
    return InkWell(
      onTap: (){Fluttertoast.showToast(msg: "Reserved Seat");},
      child: Container(
        height: 40.0,
        width: 10.0,
        decoration: BoxDecoration(
            color: Color.fromRGBO(15, 15, 15, 0.24),
            borderRadius: BorderRadius.circular(3.0)),
      ),
    );
  }

   Widget blank() {
    return Container(
    
      height: 40.0,
      width: 10.0,
      // decoration: BoxDecoration(
      //     color: Color.fromRGBO(15, 15, 15, 0.24),
      //     borderRadius: BorderRadius.circular(3.0)),
    );
  }
}