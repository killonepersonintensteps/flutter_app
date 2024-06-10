getPersonInfo(name, {int age = 1, String country = '中国', String city = '北京'}) {
  return '姓名: $name, 年龄: $age, 国家: $country, 城市: $city';
}
void main() {
  String into =  getPersonInfo('小王');
  print('hello world, $into');
}

// 命名参数
