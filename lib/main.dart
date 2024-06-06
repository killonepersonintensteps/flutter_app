import "package:flutter/material.dart";
// import "route/PageB.dart";
// import "route/pageA.dart";
// import "route/data_route/p1.dart";
// import "route/back_route_data.dart";
import "route/05_drawer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
