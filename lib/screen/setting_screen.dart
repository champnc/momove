// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  static const String routeName = "/setting";

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SettingScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var _giveVerse = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Settings",
                    style:
                        TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications Alert"),
                      Switch.adaptive(
                        activeColor: Theme.of(context).primaryColor,
                        value: _giveVerse,
                        onChanged: (bool newValue) {
                          setState(() {
                            _giveVerse = newValue;
                          });
                        },
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Center(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          fixedSize: Size(240, 40)),
                      onPressed: () {},
                      child: Text("Logout"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Notifications Alert"),
//                   Switch.adaptive(
//                     activeColor: Theme.of(context).primaryColor,
//                     value: _giveVerse,
//                     onChanged: (bool newValue) {
//                       setState(() {
//                         _giveVerse = newValue;
//                       });
//                     },
//                   )
//                 ],
//               ),
//               Expanded(child: Container()),
//               Center(
//                 child: OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                       primary: Theme.of(context).primaryColor,
//                       fixedSize: Size(240, 40)),
//                   onPressed: () {},
//                   child: Text("Logout"),
//                 ),
//               ),
