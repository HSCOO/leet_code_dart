
/// 排序算法
class Sort {
  /// 冒泡排序
  static List<int> bubble(List<int> arr) {
    final int len = arr.length;
    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len - i - 1; j++) {
        // 当前值大于后面一个值时。交换两个值
        if (arr[j] > arr[j + 1]) {
          int tmp = arr[j + 1];
          arr[j + 1] = arr[j];
          arr[j] = tmp;
        }
      }
    }
    return arr;
  }

  /// 快速排序
  static List<int> quick(List<int> arr) {
    if (arr.length < 2) {
      return arr;
    }
    // 取中间序号做对比
    int pivot = arr.length ~/ 2;
    List<int> minList = [];
    List<int> maxList = [];
    int pivotValue = arr[pivot];
    for (int i = 0; i < arr.length; i++) {
      if (i != pivot) {
        int value = arr[i];
        if (value >= pivotValue) {
          maxList.add(value);
        } else if (value < pivotValue) {
          minList.add(value);
        }
      }
    }
    List<int> res = quick(minList)
      ..add(pivotValue)
      ..addAll(quick(maxList));
    return res;
  }
}
