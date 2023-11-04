import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
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
            _tabCar(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  Widget _tabCar() {
    return const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Informacion del vehiculo")]));
  }
}
