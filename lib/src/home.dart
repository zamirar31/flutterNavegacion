import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/models/car.dart';
import 'package:flutter_navegacion/src/pages/bicycle/bicycle_page.dart';
import 'package:flutter_navegacion/src/pages/car/car_page.dart';
import 'package:flutter_navegacion/src/pages/direction/direction_page.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Navegacion"),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CarPage(
              cars: List.generate(
                20,
                (i) => Car(
                  'Car $i',
                  'Model $i',
                ),
              ),
            ),
            DirectionPage(),
            BicyclePage(),
          ],
        ),
      ),
    );
  }
}
