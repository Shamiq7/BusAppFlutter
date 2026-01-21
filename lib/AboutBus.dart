import 'package:bus_app/Mapimage.dart';
import 'package:flutter/material.dart';

class Aboutbus extends StatelessWidget {
  final Map<String, dynamic> busData;

  const Aboutbus({super.key, required this.busData});

  @override
  Widget build(BuildContext context) {
    final details = busData['details'];
    final route = busData['route'];
    final schedule = busData['schedule'];

    return Scaffold(
      backgroundColor: busData['color'],
      appBar: AppBar(
        title: Text('Bus Details'),
        backgroundColor: busData['color'],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  color: busData['color'],
                  width: double.infinity,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              text: busData['title'],
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset(
                          busData['image'],
                          height: 300,
                          width: 300,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                color: Colors.white,
                elevation: 10,
                shadowColor: Colors.amber,
                child: SizedBox(
                  height: 180,
                  width: 350,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Seats : ${details['seats']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Ac : ${details['ac']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Luggage : ${details['luggage']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Type : ${details['type']}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.amber,
                  child: SizedBox(
                    height: 180,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text(
                        //   'Start : ${route['start']}',
                        //   style: TextStyle(fontSize: 20),
                        // ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: stopsTimeline(route['stops']),
                        ),
                        // Text(
                        //   'End : ${route['end']}',
                        //   style: TextStyle(fontSize: 20),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                color: Colors.white,
                elevation: 10,
                shadowColor: Colors.amber,
                child: SizedBox(
                  height: 180,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Mapimage(mapDetails: busData),
                            ),
                          );
                        },
                        child: Image.asset(
                          busData['route']['map'],
                          height: 150,
                          width: 300,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                color: Colors.white,
                elevation: 10,
                shadowColor: Colors.amber,
                child: SizedBox(
                  height: 180,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'First : ${schedule['first']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Last : ${schedule['last']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Frequency : ${schedule['frequency']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Days : ${schedule['days']}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

Widget stopsTimeline(List<String> stops) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(stops.length, (index) {
      final isLast = index == stops.length - 1;
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              if (!isLast) Container(width: 2, height: 30, color: Colors.black),
            ],
          ),
          const SizedBox(width: 12),
          Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: Text(stops[index], style: TextStyle(fontSize: 16)),
          ),
        ],
      );
    }),
  );
}
