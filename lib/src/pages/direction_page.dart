import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/pages/direction_detail_page.dart';

//class DirectionPage extends StatelessWidget {
  //const DirectionPage({super.key});

  //@override
  //Widget build(BuildContext context) {
   // return const Center(
      //  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    //  Text("Informacion de direcciones"),
     // Icon(Icons.directions_transit)
   // ]));
  //}
//}


class DirectionPage extends StatelessWidget {
  const DirectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DirectionDetailPage()),
            );
          },
        ),
      ),
    );
  }
}