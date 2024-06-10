// 流式布局 Wrap Chip
import "package:flutter/material.dart";
class ChipItem {
  final String text;
  final String label;
  ChipItem({required this.text, required this.label});
}

List<ChipItem> myChips = [
  ChipItem(text: "A", label: "Hamilton"),
  ChipItem(text: "A", label: "Hamilton"),
  ChipItem(text: "A", label: "Hamilton"),
  ChipItem(text: "A", label: "Hamilton"),
];

// TODO: 实现生成 List Widget 的函数


class MyChip extends StatelessWidget {
  final String text;
  final String label;
  const MyChip({super.key, required this.text, required this.label});
  @override
  Widget build(BuildContext context) {
    return Chip(
      deleteIcon: const Icon(Icons.delete),
      deleteIconColor: Colors.amber,
      label: Text(label),
      avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900,
         child: Text(text)
      )
    );
  }  
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flex Demo"),
        ),
        body: const Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.end,
          spacing: 10, // 主轴间隙
          runSpacing: 10, // 交叉轴间隙
          children: [
            MyChip(label: "Hamilton", text: 'A'),
            MyChip(label: "Hamilton", text: 'A'),
            MyChip(label: "Hamilton", text: 'A'),
            //  Chip(
            //   deleteIcon: const Icon(Icons.delete),
            //   deleteIconColor: Colors.amber,
            //   label: const Text('Hamilton'),
            //   avatar: CircleAvatar(
            //       backgroundColor: Colors.blue.shade900,
            //       child: const Text('B', textAlign: TextAlign.center)
            //   ),
            // ),
          ]
        )
    );
  }
}
