import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar with hamburger button"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }
            );
          }
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text("Drawer Header")
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              }
            )
          ]
        )
      )
    );
  }
}
