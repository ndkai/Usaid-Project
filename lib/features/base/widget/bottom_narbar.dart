import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNar extends StatefulWidget {
  final int index;

  BottomNar({Key key, this.index}) : super(key: key);

  @override
  _BottomNarState createState() => _BottomNarState();
}

GlobalKey<_BottomNarState> bottomNarState = new GlobalKey<_BottomNarState>();

class _BottomNarState extends State<BottomNar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:

        break;
      case 1:
        // Navigator.of(context).pushReplacement(
        //     new MaterialPageRoute(builder: (BuildContext context) {
        //       return SchedulePage();
        //     }));
        break;
      case 2:
        break;
      case 3:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    print("BottomNavigationBarxx${widget.index}");
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Trang chủ'),),
        BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_sharp), title: Text('Tin tức')),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), title: Text('Thông báo')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Tài khoản')),
      ],
      currentIndex: widget.index != null ? widget.index : _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
    );
  }
}
