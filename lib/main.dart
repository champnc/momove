import 'package:flutter/material.dart';
import 'package:momove/config/app_router.dart';
import 'package:momove/config/theme.dart';
import 'package:momove/screen/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MomoveApp());
}

class MomoveApp extends StatelessWidget {
  const MomoveApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(context),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
