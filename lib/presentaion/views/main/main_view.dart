import 'package:flutter/material.dart';

import '../home/home_view.dart';
import '../profile/profile_view.dart';
import '../saved/saved_view.dart';

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
    const HomeView(),
    SavedView(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    const MyProfileView()
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
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.indeterminate_check_box,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.indeterminate_check_box_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                icon: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.grey,
                ),
                label: ""),
          ]),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
