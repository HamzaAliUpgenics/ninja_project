import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinJa_Project(),
  ));
}

class NinJa_Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          title: Text(
            'Ninja Project',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NAME',
                style: TextStyle(letterSpacing: 1.0, color: Colors.grey),
              ),
              SizedBox(height: 10.0),
              Text(
                'Hamza Ali',
                style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[500]),
              ),
              SizedBox(height: 15.0),
              Text(
                'Current Ninja Level',
                style: TextStyle(letterSpacing: 1.0, color: Colors.grey),
              ),
              SizedBox(height: 10.0),
              Text(
                '8',
                style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[500]),
              ),
            ],
          ),
        ));
  }
}
