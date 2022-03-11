import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const DetailScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child:
      Text("Detail"),
    );
  }
}