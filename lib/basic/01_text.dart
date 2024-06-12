import "package:flutter/material.dart";

//
//  字体 color, fontsize, fontweight, height, fontfamily, textalign, textdecoration,

// SelectionArea 可选择区域
// SelectionContainer.disabled
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flex Demo"),
        ),
        body: Container(
            width: double.infinity,
            color: Colors.blueGrey[100],
            child: Column(
              // 主轴
              // mainAxisAlignment: MainAxisAlignment.start,
              // // 交叉轴
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 可选择区域
                SelectionArea(
                    onSelectionChanged: (e) {
                      print('文案被选择啦~~');
                    },
                    child: Column(
                      children: [
                        Text(
                          "123",
                          selectionColor: Colors.white,
                        ),
                        SelectionContainer.disabled(
                            child: Text('Non-selectable text')),
                      ],
                    )),

                Text(
                  "hello world, my name ishello world, my name ishello world, my name ishello world, my name ishello world, my name ishello world, my name is",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 3.0,
                  ),
                  // overflow: TextOverflow.ellipsis,
                  // 禁用了软换行, fade 显示在右侧
                  // softWrap: false,
                  // fade 显示在下方
                  // maxLines: 1,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),

                Text.rich(
                  TextSpan(
                    text: "漫天黄沙卷星辰,",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.amber
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "全军复颂安掌门,",
                          style: TextStyle(
                            color: Colors.blue,
                          )
                      ),
                      TextSpan(text: "天不生我李淳罡")
                    ]
                  )
                ),
                
                // 间隔组件
                SizedBox(height: 16.0), 

                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // backgroundColor: Colors.amber
                  ), 
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Text("金鳞岂非池中物"),
                      Text("一遇风云便化龙"),
                      Text("一遇风云便化龙"),
                      Text("一遇风云便化龙"),
                      Text("一遇风云便化龙"),
                      Text("一遇风云便化龙"),
                    ],
                  )
                ),

              ],
            )
          )
    );
  }
}

