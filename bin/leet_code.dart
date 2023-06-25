
import 'package:leet_code_dart/src/reverse_words_in_a_string_iii.dart' as reverse_words;
import 'package:leet_code_dart/src/plu_one.dart' as plu_one;
import 'package:leet_code_dart/src/sqrtx.dart' as sqrtx;
import 'package:leet_code_dart/src/yang_hui_san_jiao.dart' as yang_hui_san_jiao;
import 'package:leet_code_dart/src/array_reverse.dart' as array_reverse;
import 'package:leet_code_dart/src/array_iterate.dart' as array_iterate;
import 'package:leet_code_dart/src/qing_wa_tiao_tai_jie.dart' as qing_wa;
import 'package:leet_code_dart/src/sort/sort.dart';
import 'package:leet_code_dart/src/merge_sorte_array.dart' as merge_array;
import 'package:leet_code_dart/src/valid_palindrome.dart' as valid_palindrome;
import 'package:leet_code_dart/src/excel_sheet_column_number.dart' as excel_sheet;

void main(List<String> arguments) {
  // 测试reverseWords
  // print(reverse_words.Solution().reverseWords("God Ding"));
  // print(reverse_words.Solution().reverseWords("Let's take LeetCode contest"));
  //
  // // 测试plusOne
  // print(plu_one.Solution().plusOne([1,2,3]));
  // print(plu_one.Solution().plusOne([4,3,2,1]));
  // print(plu_one.Solution().plusOne([9,9,9]));
  // print(plu_one.Solution().plusOne([8,9,9,9]));
  //
  // // 测试开平方根
  // print(sqrtx.Solution().mySqrt(8));
  // print(sqrtx.Solution().mySqrt(3));
  // print(sqrtx.Solution().mySqrt(1024));
  //
  // // 测试杨辉三角
  // print(yang_hui_san_jiao.Solution().generate(6));
  // print(yang_hui_san_jiao.Solution().generate(3));
  //
  // // 测试反转数组
  // print(array_reverse.Solution().reverse([1,2,3]));
  // print(array_reverse.Solution().reverse([4,5,6,8,9]));
  //
  // // 测试数组遍历
  // array_iterate.Solution().iterate([1,2,3], (p0){
  //   print("n -- $p0");
  // });
  // array_iterate.Solution().iterate([4,5,6,8,9], (p0){
  //   print("n -- $p0");
  // });
  //
  // // 测试青蛙跳
  // print(qing_wa.Solution().numWays(2));
  // print(qing_wa.Solution().numWays(7));
  // print(qing_wa.Solution().numWays(0));
  //
  // // 测试排序
  // print(Sort.bubble([3,5,1,2,9,6]));
  // print(Sort.quick([1,2,3,2,5,6]));


  // 测试合并数组
  print(merge_array.Solution().merge([1,2,3,0,0,0], 3, [2,5,6], 3));

  // 验证回文文字
  print(valid_palindrome.Solution().isPalindrome("12A man, a plan, a canal: Panama21"));
  print(valid_palindrome.Solution().isPalindrome("race a car"));
  print(valid_palindrome.Solution().isPalindrome("ab_a"));

  // 验证Excel表列序号
  print(excel_sheet.Solution().titleToNumber("AA"));
  print(excel_sheet.Solution().titleToNumber("ZY"));
}
