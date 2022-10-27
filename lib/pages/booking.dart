import 'package:flutter/material.dart';

class Booking extends StatelessWidget{
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera App"),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("Hoteles cercanos"),
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu9-zDYzIkwjwtyiDtWFHWlPrfPFQAaCb9KfR3dVbBffbQCSxsVQ2xQG_aNIDI3oN-aRk&usqp=CAU"),
                title: Text("Hotel San Francisco"),
                trailing: ElevatedButton(onPressed: (){}, child: Text("Reservar")),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hotel con grandes habitaciones"),
                    Row(
                      children: [
                        Text("4,6 -"),
                        Icon(Icons.star)
                      ],
                    )
                  ],
                )
              ),
            ),
            Card(
              child: ListTile(
                  leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu9-zDYzIkwjwtyiDtWFHWlPrfPFQAaCb9KfR3dVbBffbQCSxsVQ2xQG_aNIDI3oN-aRk&usqp=CAU"),
                  title: Text("Hotel San Francisco"),
                  trailing: ElevatedButton(onPressed: (){}, child: Text("Reservar")),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hotel con grandes habitaciones"),
                      Row(
                        children: [
                          Text("4,6 -"),
                          Icon(Icons.star)
                        ],
                      )
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
  
}