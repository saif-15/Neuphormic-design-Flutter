import 'package:flutter/material.dart';
import 'package:gradeintApp/side_drawer.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          endDrawer: MyDrawer(),
          body: HomePage(),
        ));
  }
}


