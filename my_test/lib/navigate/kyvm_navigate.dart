import 'package:flutter/material.dart';
import 'package:my_test/home/kyvm_home.dart';
import 'package:my_test/message/kyvm_message.dart';
import 'package:my_test/person_center/kyvm_person_center.dart';


class KYVMNavigate extends StatefulWidget {
  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<KYVMNavigate>
  with SingleTickerProviderStateMixin {
    
  final _bottomNavigationColor = Colors.grey;
  final _bottomNavigationSelectColor = Colors.blue;
  int _currentIndex = 0;
  var _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          KYVMHome(),
          KYVMMessage(),
          KYVMPersonCenter(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: _bottomNavigationSelectColor,
            ),
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              '首页',
              style: TextStyle(color:_bottomNavigationSelectColor),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.message,
              color: _bottomNavigationSelectColor,
            ),
            icon: Icon(
              Icons.message,
              color: _bottomNavigationColor,
            ),
            title: Text(
              '消息',
              style: TextStyle(color:_bottomNavigationSelectColor),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: _bottomNavigationSelectColor,
            ),
            icon: Icon(
              Icons.person,
              color: _bottomNavigationColor,
            ),
            title: Text(
              '我的',
              style: TextStyle(color:_bottomNavigationSelectColor),
            ),
          ),
        ],
      ),
    );
  }
  
}