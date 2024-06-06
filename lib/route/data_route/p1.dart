import "package:flutter/material.dart";
import "/route/data_route/p2.dart";
// 定义一个描述待办事项的数据类
class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

// 显示待办事项
final todos = List.generate(
    20,
    (i) =>
        Todo('Todo $i', 'A description of what needs to be done for Todo $i.'));

// 创建一个显示待办事项详细信息的界面
class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(todo: todos[index])));
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                    settings: RouteSettings(
                      arguments: todos[index]
                    )
                  )
                );
              },
            );
          }
        )
      );
  }
}
// 传递数据并跳转到待办事项详细信息界面