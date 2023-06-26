import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:leet_code_dart/src/contains_duplicate.dart'
    as contains_duplicate;
import 'package:leet_code_dart/src/reverse_words_in_a_string_iii.dart'
    as reverse_words;
import 'package:leet_code_dart/src/plu_one.dart' as plu_one;
import 'package:leet_code_dart/src/sqrtx.dart' as sqrtx;
import 'package:leet_code_dart/src/yang_hui_san_jiao.dart' as yang_hui_san_jiao;
import 'package:leet_code_dart/src/array_reverse.dart' as array_reverse;
import 'package:leet_code_dart/src/array_iterate.dart' as array_iterate;
import 'package:leet_code_dart/src/qing_wa_tiao_tai_jie.dart' as qing_wa;
import 'package:leet_code_dart/src/sort/sort.dart';
import 'package:leet_code_dart/src/merge_sorte_array.dart' as merge_array;
import 'package:leet_code_dart/src/valid_palindrome.dart' as valid_palindrome;
import 'package:leet_code_dart/src/excel_sheet_column_number.dart'
    as excel_sheet;
import 'package:leet_code_dart/src/valid_anagram.dart' as valid_anagram;
import 'package:leet_code_dart/src/missing_number.dart' as missing_number;

import 'package:leet_code_dart/src/power_of_three.dart' as power_of_three;

void main() {
  // 测试reverseWords
  test("reverse_words", () {
    expect(
        reverse_words.Solution().reverseWords("God Ding"),
        equals(
          "doG gniD",
        ));
    expect(
        reverse_words.Solution().reverseWords("Let's take LeetCode contest"),
        equals(
          "s'teL ekat edoCteeL tsetnoc",
        ));
  });

  // 测试plusOne
  test("plu_one", () {
    expect(plu_one.Solution().plusOne([1, 2, 3]), equals([1, 2, 4]));
    expect(plu_one.Solution().plusOne([4, 3, 2, 1]), equals([4, 3, 2, 2]));
    expect(plu_one.Solution().plusOne([9, 9, 9]), equals([1, 0, 0, 0]));
    expect(plu_one.Solution().plusOne([8, 9, 9, 9]), equals([9, 0, 0, 0]));
  });

  // 测试开平方根
  test("sqrtx", () {
    expect(sqrtx.Solution().mySqrt(8), equals(2));
    expect(sqrtx.Solution().mySqrt(3), equals(1));
    expect(sqrtx.Solution().mySqrt(1024), equals(32));
  });

  // 测试杨辉三角
  test("yang_hui_san_jiao", () {
    expect(
        yang_hui_san_jiao.Solution().generate(6),
        equals(
          [
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
            [1, 5, 10, 10, 5, 1]
          ],
        ));
    expect(
        yang_hui_san_jiao.Solution().generate(3),
        equals(
          [
            [1],
            [1, 1],
            [1, 2, 1]
          ],
        ));
  });

  // 测试反转数组
  test("array_reverse", () {
    expect(array_reverse.Solution().reverse([1, 2, 3]), equals([3, 2, 1]));
    expect(array_reverse.Solution().reverse([4, 5, 6, 8, 9]),
        equals([9, 8, 6, 5, 4]));
  });

  // 测试数组遍历
  test("qing_wa", () {
    array_iterate.Solution().iterate([1, 2, 3], (p0) {
      print("one -- $p0");
    });
    array_iterate.Solution().iterate([4, 5, 6, 8, 9], (p0) {
      print("two -- $p0");
    });
  });

  // 测试青蛙跳
  test("qing_wa", () {
    expect(qing_wa.Solution().numWays(2), equals(2));
    expect(qing_wa.Solution().numWays(7), equals(21));
    expect(qing_wa.Solution().numWays(0), equals(1));
  });

  // 测试排序
  test("Sort", () {
    expect(Sort.bubble([3, 5, 1, 2, 9, 6]), equals([1, 2, 3, 5, 6, 9]));
    expect(Sort.bubble([1, 2, 3, 2, 5, 6]), equals([1, 2, 2, 3, 5, 6]));
  });

  // 测试合并数组
  test("merge_array", () {
    var solution = merge_array.Solution();
    expect(solution.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3),
        equals([1, 2, 2, 3, 5, 6]));
  });

  // 验证回文文字
  test("isPalindrome", () {
    var solution = valid_palindrome.Solution();
    expect(solution.isPalindrome("12A man, a plan, a canal: Panama21"),
        equals(true));
    expect(solution.isPalindrome("race a car"), equals(false));
    expect(solution.isPalindrome("ab_a"), equals(true));
  });

  // 验证Excel表列序号
  test("titleToNumber", () {
    var solution = excel_sheet.Solution();
    expect(solution.titleToNumber("AA"), equals(27));
    expect(solution.titleToNumber("ZY"), equals(701));
  });

  // 测试存在重复元素
  test("containsDuplicate", () {
    var solution = contains_duplicate.Solution();
    expect(solution.containsDuplicate([1, 2, 3, 1]), equals(true));
    expect(solution.containsDuplicate([1, 2, 3, 4]), equals(false));
    expect(solution.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]),
        equals(true));
  });
  
  // 有效的字母异位词
  test("valid_anagram", (){
    expect(valid_anagram.Solution().isAnagram("rat", "car"), equals(false));
  });

  // 丢失的数字
  test("missing_number", (){
    expect(missing_number.Solution().missingNumber([3,0,1]), equals(2));
  });

  // 3的幂
  test("power_of_three", (){
    expect(power_of_three.Solution().isPowerOfThree(9), equals(true));
    expect(power_of_three.Solution().isPowerOfThree(45), equals(false));
    expect(power_of_three.Solution().isPowerOfThree(27), equals(true));
    expect(power_of_three.Solution().isPowerOfThree(100), equals(false));
  });
}
