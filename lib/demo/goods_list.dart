import 'package:flutter/material.dart';
import "/api/api_service.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _sectionName = '权益卡列表';
  final ApiService _apiService = ApiService();
  String _data = '';

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    final String url =
        // 'http://qa.yeeverse.top/index.php?s=/api/page/getTabContents&page=1&filter_type=goods&last_time=&id=40&wxapp_id=10001&is_h5=1&token='; // 替换为实际接口地址
        'http://10.171.3.94:9095/djb-web/api/nauth/banner'; // 替换为实际接口地址
    try {
      final response = await _apiService.fetchData(url);
      print("接口数据 ${response}");
      // setState(() {
      //   _data = response.data.toString();
      // });
    } catch (e) {
      setState(() {
        _data = 'Failed to load data';
      });
      print(e);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_sectionName),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateData,
              child: Text('更新数据'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget called');
  }

  void _updateData() {
    setState(() {
      _sectionName = '更新后的权益卡列表';
    });
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate called');
  }

  @override
  void dispose() {
    print('dispose called');
    super.dispose();
  }
}
