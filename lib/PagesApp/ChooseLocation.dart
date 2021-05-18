import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    Response response = await get(Uri.https('jsonplaceholder.typicode.com', 'todos/1'));
    print(response.body);
    Map parsed = jsonDecode(response.body);
    print(parsed['title']);

    // String userName = await Future.delayed(Duration(seconds: 2), () {
  //    return "hamza";
  //   });
  // String bio = await Future.delayed(Duration(seconds: 3), () {
  //     return "Mobile developer at upgenics";
  //   });
  //   print('$userName - $bio');
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          'Choose a location',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
      body: Text('Choose Location'),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
