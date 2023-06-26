


void main(List<String> arguments) {

}


_testAsyncKeyword() async {
  print("test函数开始了：${DateTime.now()}");
  print(await _testString());
  print("test函数结束了：${DateTime.now()}");
}

Future<String> _testString() async {
  Future f = Future.delayed(Duration(milliseconds: 300), () {
    return "我是测试字符串===1";
  });
  String result = await f;
  print("我是测试字符串===2");
  return result;
}