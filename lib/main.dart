import "package:flutter/material.dart";
// import "package:flutter_localization/flutter_localization.dart";
// import "route/PageB.dart";
// import "route/pageA.dart";
// import "route/data_route/p1.dart";
// import "route/back_route_data.dart";
// import "route/05_drawer.dart";
// import "Layout/flex.dart";
// import "layout/01_container.dart";
// import "layout/04_wrap.dart";
import "basic/01_text.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      // 国际化
    );
  }
}
