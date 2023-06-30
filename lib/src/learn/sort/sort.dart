
import 'dart:math';

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

  /// 选择排序
  /// 两层循环，内层循环找出最大值，放在末尾
  static List<int> select(List<int> arr){
    for(int end = arr.length - 1; end > 0; end--){
      int maxIndex = 0;
      for(int begin = 0; begin <= end; begin++){
        if(arr[maxIndex] <= arr[begin]){
          maxIndex = begin;
        }
      }
      int tmp = arr[maxIndex];
      arr[maxIndex] = arr[end];
      arr[end] = tmp;
    }
    return arr;
  }

  /// 插入排序
  /// 待插入的值，每次和之前的值做比较。
  static List<int> insert(List<int> arr){
    for(int begin = 1; begin < arr.length; begin++){
      int cur = begin;
      while(cur > 0 && arr[cur] < arr[cur - 1]){
        int tmp = arr[cur];
        arr[cur] = arr[cur - 1];
        arr[cur - 1] = tmp;
        cur--;
      }
    }
    return arr;
  }

  /// 插入排序优化1
  /// 待插入的值，每次和之前的值做比较，如果待插入的数比它小，那么数据就往后挪动一个
  static List<int> insertYou1(List<int> arr){
    for(int begin = 1; begin < arr.length; begin++){
      int cur = begin;
      int cache = arr[cur];
      /// 讲大的元素都往右挪到，cur最终会比他小的元素前停下来，也就是待插入的位置。
      while(cur > 0 && cache < arr[cur - 1]){
        arr[cur] = arr[cur - 1];
        cur--;
      }
      arr[cur] = cache;
    }
    return arr;
  }

  /// 插入排序优化2
  /// 待插入的值，二分查找，找到比待插入值大的值，就停止
  static List<int> insertYou2(List<int> arr){
    for(int begin = 0; begin < arr.length; begin++){
      int cache = arr[begin];
      /// 二分搜索。
      int index = indexOfInsert(arr, cache);
      /// 待插入的范围是[index, begin)
      for(int i = begin; i > index; i--){
        arr[i] = arr[i-1];
      }
      arr[index] = cache;
    }
    return arr;
  }

  /// 二分搜索
  /// 每次都分一般对比，如果找到了返回序号，如果没有找到就返回-1
  static int indexOfInsert(List<int> arr, int value){
    if (arr.isEmpty) {
      return 0;
    }
    int begin = 0;
    int end = arr.length;
    while(begin < end){
      int mid = (begin + end) >> 1;
      if (value < arr[mid]) {
        end = mid;
      }else{
        begin = mid + 1;
      }
    }
    return begin;
  }

  /// 二分搜索
  /// 每次都分一般对比，如果找到了返回序号，如果没有找到就返回-1
  static int indexOf(List<int> arr, int value){
    if (arr.isEmpty) {
      return -1;
    }
    int begin = 0;
    int end = arr.length;
    while(begin < end){
      int mid = (begin + end) >> 1;
      if (value < arr[mid]) {
        end = mid;
      }else if(value > arr[mid]){
        begin = mid + 1;
      }else{
        return mid;
      }
    }
    return -1;
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
