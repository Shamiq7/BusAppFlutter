import 'package:bus_app/AboutBus.dart';
import 'package:flutter/material.dart';
import 'package:bus_app/subParts/HomePgList.dart';

class Homepg extends StatelessWidget {
  const Homepg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('rent'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(color: Colors.blue.shade100),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Welcome To\n',
                            style: TextStyle(fontSize: 20, color: Colors.black),

                            children: [
                              TextSpan(
                                text: ' City Bus Rental',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Services',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset('images/Bus3.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text('Select A City Bus', style: TextStyle(fontSize: 30)),
              SizedBox(height: 30),
              SizedBox(
                height: 300,

                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2,
                  ),
                  itemCount: BusDetails.length,
                  itemBuilder: (context, index) {
                    final item = BusDetails[index];
                    return Card(
                      elevation: 10,
                      color: item['color'],
                      child: InkWell(
                        splashColor: Color.fromRGBO(0, 255, 0, 1),
                        onTap: () {
                          Navigator.push(
                            context,
                            (MaterialPageRoute(
                              builder: (context) => Aboutbus(busData: item),
                            )),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Image.asset(
                              item['image'],
                              height: 70,
                              //fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
