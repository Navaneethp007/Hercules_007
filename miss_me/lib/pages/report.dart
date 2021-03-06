import 'package:flutter/material.dart';

import 'home.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
              child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: const Text("Mission Reporting Center🧥🧥",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Enter the name of the person you found",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Enter the number of days after gone missing",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Number of days",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Location where you found him",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Location",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Describe his mental and physical state",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(200)),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      actionsAlignment: MainAxisAlignment.center,
                      backgroundColor: Colors.purpleAccent[100],
                      title: const Text(
                        'Details Taken',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      content: const Text(
                        'The details you have submitted are stored...\nSend a mail regarding your findings to your state police or a personal message to the collector near to your location\nEmail id: anono@gmail.com\nPassword:123@45_678',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            // Navigator.pop(context, 'OK');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  );

                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: const Text('Submit',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
    );
  }
}
