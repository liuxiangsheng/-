import 'package:flutter/material.dart';


class CarLocation extends StatefulWidget {
  @override
  _CarLocationState createState() => _CarLocationState();
}

class _CarLocationState extends State<CarLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('点击位置'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}