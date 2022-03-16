// ignore_for_file: unused_field

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:momove/screen/screens.dart';
import 'package:momove/screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selected = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final _pageOptions = [
    OverviewScreen(
      items: List<ListItem>.generate(10, (i) => HeadingItem("$i")),
    ),
    const SearchScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  final _textTitle = [
    const Text("Overview"),
    const Text("Detail"),
    const Text("Profile"),
    const Text("Setting"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: NestedScrollView(
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //     return <Widget>[
      //       SliverAppBar(
      //         backgroundColor: Theme.of(context).primaryColorDark,
      //         title: _textTitle[_selected],
      //         pinned: false,
      //         floating: true,
      //         snap: false,
      //         forceElevated: innerBoxIsScrolled,
      //       ),
      //     ];
      //   },
      //   body: SizedBox.expand(
      //     child: PageView(
      //       controller: _pageController,
      //       onPageChanged: (index) {
      //         setState(
      //           () => _selected = index,
      //         );
      //       },
      //       children: _pageOptions,
      //     ),
      //   ),
      // ),
      body: SizedBox.expand(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(
              () => _selected = index,
            );
          },
          children: _pageOptions,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 35.0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Theme.of(context).primaryColorDark,
        type: BottomNavigationBarType.shifting,
        currentIndex: _selected,
        onTap: (int index) {
          setState(() {
            _selected = index;
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: const Icon(Icons.home),
            tooltip: "Home",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: const Icon(Icons.search),
            tooltip: "Search",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Badge(
                badgeContent: const Text(
                  "10+",
                  style: TextStyle(fontSize: 8.0,color: Colors.white),
                ),
                child: const Icon(Icons.notifications)),
            tooltip: "Notification",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            label: "Setting",
            icon: const Icon(Icons.settings),
            tooltip: "Setting",
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
