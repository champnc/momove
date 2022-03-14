// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = "/Search";

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SearchScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Search",
              style: TextStyle(fontSize: 48.0,fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}