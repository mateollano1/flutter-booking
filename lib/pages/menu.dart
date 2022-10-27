import 'package:flutter/material.dart';
import 'package:ui_exa/pages/booking.dart';
import 'package:ui_exa/pages/hello.dart';

class Menu extends StatelessWidget{
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera App"),
        elevation: 0,
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Mi App Tareas",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                SizedBox(height: 100),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hello()));
                }, child: Text("Say Hello!")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                }, child: Text("Booking Hotel")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){}, child: Text("Random Generator!")),
              ],
            ),
          ),
        ),
      ) ,
    );
  }

}