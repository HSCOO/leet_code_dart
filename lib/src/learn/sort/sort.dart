
/// 排序算法
class Sort {
  /// 冒泡排序
  static List<int> bubble(List<int> arr) {
    final int len = arr.length;
    for (int i = len - 1; i > 0; i--) {
      for (int j = 1; j <= i; j++) {
        // 当前值大于后面一个值时。交换两个值
        if (arr[j-1] > arr[j]) {
          int tmp = arr[j - 1];
          arr[j - 1] = arr[j];
          arr[j] = tmp;
        }
      }
    }
    return arr;
  }

  /// 冒泡排序优化1
  /// 如果每次外循环的时候，都不交换位置，说明已经排好顺序，可以提前结束循环
  static List<int> bubbleYou1(List<int> arr){
    final int len = arr.length;
    for(int i = len - 1; i > 0; i--){
      bool sorted = true;
      for (int j = 1; j <= i; j++){
        if (arr[j-1] > arr[j]) {
          int tmp = arr[j-1];
          arr[j-1] = arr[j];
          arr[j] = tmp;
          sorted = false;
        }
      }
      if (sorted == true) {
        break;
      }
    }
    return arr;
  }

  /// 冒泡排序优化2
  /// 如果每次外循环的时候，从某一个位置开始都不交换位置，说明这个位置后面的数字已经排好顺序，可以缩小遍历范围。
  static List<int> bubbleYou2(List<int> arr){
    final int len = arr.length;
    for(int i = len - 1; i > 0; i--){
      // 如果一直不进入内循环，说明已经排好顺序，i--就小于0，就退出外循环了。
      // 如果进去了内循环，就会改变sortedIndex，最后内循环遍历完成后，就可以知道最后一次交换的位置在什么地方
      int sortedIndex = 0;
      for (int j = 1; j <= i; j++){
        if (arr[j-1] > arr[j]) {
          int tmp = arr[j-1];
          arr[j-1] = arr[j];
          arr[j] = tmp;
          sortedIndex = j-1;
        }
      }
      i = sortedIndex;
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
