import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Theme.of(context).primaryColorDark,
        type: BottomNavigationBarType.shifting,
        currentIndex: _selected,
        onTap: (int selectedIndex) {
          setState(() {
            _selected = selectedIndex;
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
            label: "Home",
            icon: const Icon(Icons.home),
            tooltip: "Home",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: const Icon(Icons.home),
            tooltip: "Home",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: const Icon(Icons.home),
            tooltip: "Home",
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
