// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = "/detail";
  final Function(double offset) callback;
  final double offset;
  const DetailScreen(this.callback, this.offset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
                callback(offset);
              },
            );
          },
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Detail",
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
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
