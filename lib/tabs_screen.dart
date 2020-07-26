import 'package:flutter/material.dart';
import 'package:nexg/profile.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'tab-screen';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 2;

  @override
  void initState() {
    _pages = [
      {
        'title': 'Screen',
        'page': Profile(),
      },
      {
        'title': 'Screen',
        'page': Profile(),
      },
      {
        'title': 'Screen',
        'page': Profile(),
      },
      {
        'title': 'Screen',
        'page': Profile(),
      },
      {
        'title': 'Screen',
        'page': Profile(),
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.compare_arrows,
              color: Colors.indigo[900],
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Social Distancing',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[900],
                  ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.notifications,
                color: Colors.black87,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.green,
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blueGrey[900],
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Screen'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service),
            title: Text('Screen'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_front),
            title: Text('Screen'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            title: Text('Screen'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Screen'),
          ),
        ],
      ),
    );
  }
}
