import 'package:flutter/material.dart';
import 'package:my_test/home/car_location.dart';

class KYVMHome extends StatefulWidget {
  @override
  _KYVMHomeState createState() => _KYVMHomeState();
}

class _KYVMHomeState extends State<KYVMHome> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue,
        child: ListTile(
              title: Text('请点击', style: TextStyle(fontSize: 18.0)),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarLocation()),
                );
              },
            ),
      ),
    );
  }
}