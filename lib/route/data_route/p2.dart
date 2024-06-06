import "package:flutter/material.dart";
import "/route/data_route/p1.dart";

class DetailScreen extends StatelessWidget {
  // const DetailScreen({super.key, required this.todo});
  const DetailScreen({super.key});

  // final Todo todo;
  @override
  Widget build(BuildContext context) {
    // 非空断言确定  ModalRoute.of(context) 不会返回 Null
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;
        return Scaffold(
          appBar: AppBar(
            title: Text(todo.title),
        ),
        body: Center(child: Text(todo.description)));
    }
}
