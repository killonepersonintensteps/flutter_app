import "package:flutter/material.dart";
// import '/route/PageB.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex Demo"),
      ),
      body: const Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Chip(label: "123")
        ],
      )
    );
  }
}
