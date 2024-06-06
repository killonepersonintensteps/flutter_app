import "package:flutter/material.dart";
import '/route/PageB.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Route"),
      ),
      body: Center(
        // child: Text("This is the first route"),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageB()
              ),
            );
          },
          child: const Text('Go To Second Route')),
      ),
    );
  }
}
