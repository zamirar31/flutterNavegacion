import 'package:flutter/material.dart';

//class DirectionDetailPage extends StatelessWidget {
//  const DirectionDetailPage({super.key});

 // @override
//  Widget build(BuildContext context) {
  //  return const Placeholder();
 // }
//}


class DirectionDetailPage extends StatelessWidget {
  const DirectionDetailPage({super.key});

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
          Navigator.pop(context);
          },
        ),
      ),
    );
  }
}