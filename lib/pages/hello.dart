import 'package:flutter/material.dart';

class Hello extends StatefulWidget{
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  String name = "mateo";
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
                Text("Say Hello!"),
                const SizedBox(height: 50),
                Text("Ingresa Tu nombre: "),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Ingresa tu nombre"
                  ),
                  onChanged: (text){
                    name = text;

                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  print(name);
                  setState(() {

                  });
                }, child: Text("Saludar")),
                const SizedBox(height: 20),
                Text("Hola $name! :)")
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}