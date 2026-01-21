import 'package:bus_app/Homepg.dart';
import 'package:flutter/material.dart';

class Loginpg extends StatefulWidget {
  const Loginpg({super.key});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  TextEditingController Namecontroller = TextEditingController();
  var message = '';
  var userName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login page', style: TextStyle(fontSize: 30))),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0, 48.0),
              child: Card(
                elevation: 15,
                surfaceTintColor: Colors.blue,
                color: Colors.blue.shade100,
                child: SizedBox(
                  height: 600,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome $userName',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: Namecontroller,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 1.5,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Enter Your Name',
                            label: Text('Name *'),
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () async {
                            var title = Namecontroller.text;
                            if (title.isEmpty) {
                              message = 'Plese Enter Your Name!';
                              setState(() {});
                            } else {
                              userName = Namecontroller.text;
                              message = '';
                              setState(() {});
                              await Future.delayed(Duration(seconds: 2));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homepg(),
                                ),
                              );
                            }
                          },
                          child: Text('Login', style: TextStyle(fontSize: 15)),
                        ),
                        SizedBox(height: 10),
                        Text(message, style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
