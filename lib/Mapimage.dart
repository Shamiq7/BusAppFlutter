import 'package:bus_app/AboutBus.dart';
import 'package:flutter/material.dart';

class Mapimage extends StatelessWidget {
  final Map<String, dynamic> mapDetails;
  const Mapimage({super.key, required this.mapDetails});

  @override
  Widget build(BuildContext context) {
    final Map = mapDetails['route'];

    return Scaffold(
      backgroundColor: mapDetails['color'],
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Image.asset(
                  Map['map'],

                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                Text(
                  'Stops',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(20, 0, 0, 0),
                  child: Column(children: [stopsTimeline(Map['stops'])]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
