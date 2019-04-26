import 'package:flutter/material.dart';

class KYVMPersonCenter extends StatefulWidget {
  @override
  _KYVMPersonCenterState createState() => _KYVMPersonCenterState();
}


class _KYVMPersonCenterState extends State<KYVMPersonCenter> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  int _counter = 0;

  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


}