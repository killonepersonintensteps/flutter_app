import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListViewDefault(),
    );
  }
}

//  默认listView
class ListViewDefault extends StatelessWidget {
  const ListViewDefault({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      // padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      // padding: EdgeInsets.only(bottom: double.infinity),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(child: Text("微信支付")),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: Center(child: Text("支付宝支付")),
        ),
        Container(
          height: 50,
          color: Colors.amber[400],
          child: Center(child: Text("银联支付")),
        ),
      ],
    );
  }
}

// ListView.builder构造函数采用IndexedWidgetBuilder,它根据需要构建子项。此构造函数适用于具有大量（或无限）子项的列表视图，因为仅对实际可见的子项调用构建器
class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            decoration: BoxDecoration(
              color: Colors.amber[colorCodes[index]],
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: Center(
              child: Text('Entry ${entries[index]}'),
            ),
          );
        });
  }
}

// ListView.separated构造函数采用两个IndexedWidgetBuilder：
// itemBuilder根据需要构建子项，
// separatorBuilder 同样构建出现在子项之间的分隔子项。此构造函数适用于具有固定数量子项的列表视图。
class ListViewSeparated extends StatelessWidget {
  ListViewSeparated({super.key});

  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I'
  ];
  final List<int> colorCodes = <int>[
    900,
    800,
    700,
    600,
    400,
    300,
    200,
    100,
    50
  ];

  @override
  Widget build(BuildContext context) {
    return entries.length > 0
        ? ListView.separated(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            itemCount: entries.length,
            addAutomaticKeepAlives: true,
            separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.black,
                ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {print("点击了${entries[index]}")},
                child: Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  decoration: BoxDecoration(
                    color: Colors.amber[colorCodes[index]],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Center(
                    child: Text('Entry ${entries[index]}'),
                  ),
                ),
              );
            })
        : const Text('No Data');
  }
}

