import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.amberAccent,
          selectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          //New
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.indeterminate_check_box_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.grey,
                ),
                label: ""),
          ]),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
