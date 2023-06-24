
import 'package:leet_code_dart/src/reverse_words_in_a_string_iii.dart' as reverse_words;
import 'package:leet_code_dart/src/plu_one.dart' as plu_one;
import 'package:leet_code_dart/src/sqrtx.dart' as sqrtx;
import 'package:leet_code_dart/src/yang_hui_san_jiao.dart' as yang_hui_san_jiao;
import 'package:leet_code_dart/src/array_reverse.dart' as array_reverse;
import 'package:leet_code_dart/src/array_iterate.dart' as array_iterate;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  // 测试reverseWords
  print(reverse_words.Solution().reverseWords("God Ding"));
  print(reverse_words.Solution().reverseWords("Let's take LeetCode contest"));

  // 测试plusOne
  print(plu_one.Solution().plusOne([1,2,3]));
  print(plu_one.Solution().plusOne([4,3,2,1]));
  print(plu_one.Solution().plusOne([9,9,9]));
  print(plu_one.Solution().plusOne([8,9,9,9]));

  // 测试开平方根
  print(sqrtx.Solution().mySqrt(8));
  print(sqrtx.Solution().mySqrt(3));
  print(sqrtx.Solution().mySqrt(1024));

  // 测试杨辉三角
  print(yang_hui_san_jiao.Solution().generate(6));
  print(yang_hui_san_jiao.Solution().generate(3));

  // 测试反转数组
  print(array_reverse.Solution().reverse([1,2,3]));
  print(array_reverse.Solution().reverse([4,5,6,8,9]));

  // 测试数组遍历
  array_iterate.Solution().iterate([1,2,3], (p0){
    print("n -- $p0");
  });

  array_iterate.Solution().iterate([4,5,6,8,9], (p0){
    print("n -- $p0");
  });
}
