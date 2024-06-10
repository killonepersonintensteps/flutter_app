import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flex Demo"),
        ),
        body: Container(
          width: 400,
          height: 400,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          // transform: Matrix4.rotationZ(100),
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 10, color: Colors.red),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              gradient: const LinearGradient(
                // colors: Colors.accents,
                colors: [Colors.red, Colors.green],
              )
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.amberAccent,
              //     width: 10,
              //   ),
              //   left: BorderSide(
              //     color: Colors.blueAccent,
              //     width: 10,
              //   ),
              //   right: BorderSide(
              //     color: Colors.red,
              //     width: 10,
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.green,
              //     width: 10,
              //   )
              // )
              ),
          child: const Text(
            "Hello World",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
            ),
          ),
        ));
  }
}
