import 'package:flutter/material.dart';


class KYVMMessage extends StatefulWidget {
  @override
  _KYVMMessageState createState() => _KYVMMessageState();
}


class _KYVMMessageState extends State<KYVMMessage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.red,
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

