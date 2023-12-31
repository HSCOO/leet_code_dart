
import 'package:leet_code_dart/src/learn/illustration_of_algorithm/cong_wei_dao_tou.dart';
import 'package:leet_code_dart/src/learn/illustration_of_algorithm/yong_liang_ge_zhan.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:leet_code_dart/src/practice/contains_duplicate.dart'
    as contains_duplicate;
import 'package:leet_code_dart/src/practice/reverse_words_in_a_string_iii.dart'
    as reverse_words;
import 'package:leet_code_dart/src/practice/plu_one.dart' as plu_one;
import 'package:leet_code_dart/src/practice/sqrtx.dart' as sqrtx;
import 'package:leet_code_dart/src/practice/yang_hui_san_jiao.dart'
    as yang_hui_san_jiao;
import 'package:leet_code_dart/src/practice/array_reverse.dart'
    as array_reverse;
import 'package:leet_code_dart/src/practice/array_iterate.dart'
    as array_iterate;
import 'package:leet_code_dart/src/practice/qing_wa_tiao_tai_jie.dart'
    as qing_wa;
import 'package:leet_code_dart/src/learn/sort/sort.dart';
import 'package:leet_code_dart/src/practice/merge_sorte_array.dart'
    as merge_array;
import 'package:leet_code_dart/src/practice/valid_palindrome.dart'
    as valid_palindrome;
import 'package:leet_code_dart/src/practice/excel_sheet_column_number.dart'
    as excel_sheet;
import 'package:leet_code_dart/src/practice/valid_anagram.dart'
    as valid_anagram;
import 'package:leet_code_dart/src/practice/missing_number.dart'
    as missing_number;

import 'package:leet_code_dart/src/practice/power_of_three.dart'
    as power_of_three;
import 'package:leet_code_dart/src/practice/fizz_buzz.dart' as fizz_buzz;
import 'package:leet_code_dart/src/practice/counting_bits.dart'
    as counting_bits;
import 'package:leet_code_dart/src/practice/longest_substring.dart'
    as longest_substring;
import 'package:leet_code_dart/src/practice/longest_palindromic_substring.dart'
    as longest_palindromic_substring;
import 'package:leet_code_dart/src/practice/three_sum.dart' as three_sum;
import 'package:leet_code_dart/src/practice/generate_parentheses.dart'
    as generate_parentheses;
import 'package:leet_code_dart/src/practice/container_with_most_water.dart'
    as container_with_most_water;
import 'package:leet_code_dart/src/learn/illustration_of_algorithm/yong_liang_ge_zhan.dart'
    as yong_liang_ge_zhan;
import 'package:leet_code_dart/src/offer/fei_bo_na_qi_shu_lie.dart'
    as fei_bo_na_qi_shu_lie;
import 'package:leet_code_dart/src/offer/xuan_zhuan_shu_zu.dart'
    as xuan_zhuan_shu_zu;
import 'package:leet_code_dart/src/offer/da_yin_cong.dart' as da_yin_cong;
import 'package:leet_code_dart/src/offer/shan_chu_lian_biao.dart'
    as shan_chu_lian_biao;
import 'package:leet_code_dart/src/offer/diao_zheng_shu_zu.dart'
    as diao_zheng_shu_zu;
import 'package:leet_code_dart/src/offer/shun_shi_zhen_da_yin.dart'
    as shun_shi_zhen_da_yin;
import 'package:leet_code_dart/src/offer/di_yi_ge_zhi_chu.dart'
    as di_yi_ge_zhi_chu;
import 'package:leet_code_dart/src/offer/liang_g_lian_biao_de_di.dart'
    as liang_g_lian_biao_de_di;
import 'package:leet_code_dart/src/offer/zai_pai_xu_sh_zu_zhong.dart'
    as zai_pai_xu_sh_zu_zhong;
import 'package:leet_code_dart/src/offer/que_shi_de_shu.dart' as que_shi_de_shu;
import 'package:leet_code_dart/src/offer/he_wei_sde_lian_xu_zheng.dart'
    as he_wei_sde_lian_xu_zheng;
import 'package:leet_code_dart/src/offer/fan_zhuan_dan_ci_shun_xu.dart'
    as fan_zhuan_dan_ci_shun_xu;

import 'package:leet_code_dart/src/offer/tvdfij.dart' as tvdfij;

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
  test("array_iterate", () {
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
    // expect(Sort.bubble([3, 5, 1, 2, 9, 6]), equals([1, 2, 3, 5, 6, 9]));
    // expect(Sort.bubble([1, 2, 3, 2, 5, 6]), equals([1, 2, 2, 3, 5, 6]));
    // expect(Sort.bubbleYou1([1, 2, 3, 4, 5, 6]), equals([1, 2, 3, 4, 5, 6]));
    // expect(Sort.bubble([1, 2, 3, 4, 5, 6]), equals([1, 2, 3, 4, 5, 6]));
    // expect(Sort.bubbleYou2([3, 5, 1, 2, 9, 6]), equals([1, 2, 3, 5, 6, 9]));
    // expect(Sort.select([3, 5, 1, 2, 9, 6]), equals([1, 2, 3, 5, 6, 9]));
    // expect(Sort.insert([3, 5, 1, 2, 9, 6]), equals([1, 2, 3, 5, 6, 9]));
    expect(Sort.insertYou2([3, 5, 1, 2, 9, 6]), equals([1, 2, 3, 5, 6, 9]));
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
  test("valid_anagram", () {
    expect(valid_anagram.Solution().isAnagram("rat", "car"), equals(false));
  });

  // 丢失的数字
  test("missing_number", () {
    expect(missing_number.Solution().missingNumber([3, 0, 1]), equals(2));
  });

  // 3的幂
  test("power_of_three", () {
    expect(power_of_three.Solution().isPowerOfThree(9), equals(true));
    expect(power_of_three.Solution().isPowerOfThree(45), equals(false));
    expect(power_of_three.Solution().isPowerOfThree(27), equals(true));
    expect(power_of_three.Solution().isPowerOfThree(100), equals(false));
  });

  // Fizz Buzz
  test("fizz_buzz", () {
    expect(fizz_buzz.Solution().fizzBuzz(3), equals(["1", "2", "Fizz"]));
  });

  // 比特位计数
  test("counting_bits", () {
    expect(counting_bits.Solution().countBits(2), equals([0, 1, 1]));
    expect(counting_bits.Solution().countBits(5), equals([0, 1, 1, 2, 1, 2]));
  });

  // 无重复字符的最长子串
  test("longest_substring", () {
    expect(longest_substring.Solution().lengthOfLongestSubstring("abcabcbb"),
        equals(3));
    expect(longest_substring.Solution().lengthOfLongestSubstring("bbbbbbb"),
        equals(1));
    expect(longest_substring.Solution().lengthOfLongestSubstring("pwwkew"),
        equals(3));
  });

  // 最长回文子串
  test("longest_palindromic_substring", () {
    // expect(longest_palindromic_substring.Solution().longestPalindrome("babad"), equals("bab"));
    // expect(longest_palindromic_substring.Solution().longestPalindrome("cbbd"), equals("bb"));
    // expect(longest_palindromic_substring.Solution().longestPalindrome("a"), equals("a"));
    // expect(longest_palindromic_substring.Solution().longestPalindrome("ac"), equals("a"));
    // expect(longest_palindromic_substring.Solution().longestPalindrome("abcdfe"), equals("a"));
    expect(
        longest_palindromic_substring.Solution()
            .longestPalindrome("aacabdkacaa"),
        equals("aca"));
  });

  // 无重复字符的最长子串
  test("three_sum", () {
    expect(
        three_sum.Solution().threeSum([-1, 0, 1, 2, -1, -4]),
        equals([
          [-1, -1, 2],
          [-1, 0, 1]
        ]));
    expect(three_sum.Solution().threeSum([0, 1, 1]), equals([]));
    expect(
        three_sum.Solution().threeSum([0, 0, 0]),
        equals([
          [0, 0, 0]
        ]));
    expect(
        three_sum.Solution().threeSum([-1, -1, -1, 2]),
        equals([
          [-1, -1, 2]
        ]));
  });

  // 括号生成
  test("generate_parentheses", () {
    expect(
        generate_parentheses.Solution().generateParenthesis(3),
        equals(
          ["((()))", "(()())", "(())()", "()(())", "()()()"],
        ));
    expect(
        generate_parentheses.Solution().generateParenthesis(1), equals(["()"]));
    expect(generate_parentheses.Solution().generateParenthesis(2),
        equals(["(())", "()()"]));
  });

  // 接水最多
  test("container_with_most_water", () {
    expect(
      container_with_most_water.Solution().maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]),
      equals(49),
    );
    expect(
      container_with_most_water.Solution().maxArea([1, 1]),
      equals(1),
    );
    expect(
      container_with_most_water.Solution().maxArea([2, 3, 3]),
      equals(4),
    );
  });

  // yong_liang_ge_zhan
  test("yong_liang_ge_zhan", () {
    CQueue queue = CQueue();
    expect(queue.deleteHead(), equals(-1));
    queue.appendTail(5);
    queue.appendTail(2);
    expect(queue.deleteHead(), equals(5));
    expect(queue.deleteHead(), equals(2));
  });

  // 剑指 Offer 10- I. 斐波那契数列
  test("fei_bo_na_qi_shu_lie", () {
    expect(fei_bo_na_qi_shu_lie.Solution().fib(2), equals(1));
    expect(fei_bo_na_qi_shu_lie.Solution().fib(5), equals(5));
  });

  // 剑指 Offer 11. 旋转数组的最小数字
  test("xuan_zhuan_shu_zu", () {
    expect(xuan_zhuan_shu_zu.Solution().minArray([3, 4, 5, 1, 2]), equals(1));
    expect(xuan_zhuan_shu_zu.Solution().minArray([2, 2, 2, 0, 1]), equals(0));
  });

  // 剑指 Offer 17. 打印从1到最大的n位数
  test("da_yin_cong", () {
    expect(da_yin_cong.Solution().printNumbers(1),
        equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
  });

  // 剑指 Offer 18. 删除链表的节点
  test("shan_chu_lian_biao", () {
    shan_chu_lian_biao.ListNode? listNode4 = shan_chu_lian_biao.ListNode(4);
    shan_chu_lian_biao.ListNode listNode5 = shan_chu_lian_biao.ListNode(5);
    shan_chu_lian_biao.ListNode listNode1 = shan_chu_lian_biao.ListNode(1);
    shan_chu_lian_biao.ListNode listNode9 = shan_chu_lian_biao.ListNode(9);
    listNode4.next = listNode5;
    listNode5.next = listNode1;
    listNode1.next = listNode9;

    expect(shan_chu_lian_biao.Solution().deleteNode(listNode4, 5),
        equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
  });

  // 剑指 Offer 21. 调整数组顺序使奇数位于偶数前面
  test("diao_zheng_shu_zu", () {
    expect(diao_zheng_shu_zu.Solution().exchange([1, 2, 3, 4]),
        equals([1, 3, 2, 4]));
    expect(diao_zheng_shu_zu.Solution().exchange([1, 2, 3, 4, 5]),
        equals([1, 3, 5, 2, 4]));
  });

  // 顺时针打印矩阵
  test("shun_shi_zhen_da_yin", () {
    expect(
        shun_shi_zhen_da_yin.Solution().spiralOrder([
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]
        ]),
        equals([1, 2, 3, 6, 9, 8, 7, 4, 5]));
    expect(
        shun_shi_zhen_da_yin.Solution().spiralOrder([
          [1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12]
        ]),
        equals([1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]));
  });

  // 剑指 Offer 50. 第一个只出现一次的字符
  test("di_yi_ge_zhi_chu", () {
    expect(di_yi_ge_zhi_chu.Solution().firstUniqChar("ss"), equals(" "));
    expect(di_yi_ge_zhi_chu.Solution().firstUniqChar("aadadaad"), equals(" "));
    expect(di_yi_ge_zhi_chu.Solution().firstUniqChar("acaadcad"), equals(" "));
  });

  // 剑指 Offer 52. 两个链表的第一个公共节点
  test("liang_g_lian_biao_de_di", () {
    liang_g_lian_biao_de_di.ListNode nodeA1 =
        liang_g_lian_biao_de_di.ListNode(4);
    liang_g_lian_biao_de_di.ListNode nodeA2 =
        liang_g_lian_biao_de_di.ListNode(1);

    liang_g_lian_biao_de_di.ListNode nodeC1 =
        liang_g_lian_biao_de_di.ListNode(8);
    liang_g_lian_biao_de_di.ListNode nodeC2 =
        liang_g_lian_biao_de_di.ListNode(4);
    liang_g_lian_biao_de_di.ListNode nodeC3 =
        liang_g_lian_biao_de_di.ListNode(5);
    nodeC1.next = nodeC2;
    nodeC2.next = nodeC3;

    liang_g_lian_biao_de_di.ListNode nodeB1 =
        liang_g_lian_biao_de_di.ListNode(5);
    liang_g_lian_biao_de_di.ListNode nodeB2 =
        liang_g_lian_biao_de_di.ListNode(0);
    liang_g_lian_biao_de_di.ListNode nodeB3 =
        liang_g_lian_biao_de_di.ListNode(1);

    liang_g_lian_biao_de_di.ListNode headA = nodeA1;
    headA.next = nodeA2;
    nodeA2.next = nodeC1;

    liang_g_lian_biao_de_di.ListNode headB = nodeB1;
    headB.next = nodeB2;
    nodeB2.next = nodeB3;
    nodeB3.next = nodeC1;

    expect(liang_g_lian_biao_de_di.Solution().getIntersectionNode(headA, headB),
        equals(nodeC1));
  });

  // 剑指 Offer 53 - I. 在排序数组中查找数字 I
  test("zai_pai_xu_sh_zu_zhong", () {
    expect(zai_pai_xu_sh_zu_zhong.Solution().search([5, 7, 7, 8, 8, 10], 8),
        equals(2));
  });

  //
  test("que_shi_de_shu", () {
    expect(que_shi_de_shu.Solution().missingNumber([0, 1, 3]), equals(2));
    expect(que_shi_de_shu.Solution().missingNumber([0]), equals(1));
    expect(que_shi_de_shu.Solution().missingNumber([1]), equals(0));
    expect(que_shi_de_shu.Solution().missingNumber([0, 1]), equals(2));
    expect(que_shi_de_shu.Solution().missingNumber([0, 1, 2]), equals(3));
    expect(que_shi_de_shu.Solution().missingNumber([0, 2, 3]), equals(1));
    expect(que_shi_de_shu.Solution().missingNumber([0, 1, 2, 4, 5]), equals(3));
  });

  // he_wei_sde_lian_xu_zheng
  test("he_wei_sde_lian_xu_zheng", () {
    expect(
        he_wei_sde_lian_xu_zheng.Solution().findContinuousSequence(9),
        equals([
          [2, 3, 4],
          [4, 5]
        ]));
  });

  //
  test("fan_zhuan_dan_ci_shun_xu", () {
    expect(fan_zhuan_dan_ci_shun_xu.Solution().reverseWords("the sky is blue"),
        equals("blue is sky the"));
  });

  // 左右两边子数组的和相等
  test("tvdfij", () {
    // expect(tvdfij.Solution().pivotIndex([1, 7, 3, 6, 5, 6]), equals(3));
    // expect(tvdfij.Solution().pivotIndex([1,2,3]), equals(-1));
    // expect(tvdfij.Solution().pivotIndex([2,1,-1]), equals(0));
    //
    expect(tvdfij.Solution().pivotIndex([-1,-1,-1,-1,-1,0]), equals(2));
  });
}

// 设计一个函数，根据用户交易量算出交易费用
// 1-5笔单价30元，
// 6-20笔单价20元，
// 21-50笔单价10元，
// 51-100笔单价9元，
// 101-500笔单价8元，
// 501-1000笔单价7元，
// 1001-2000笔单价6元，
// 2001-3000笔单价5元，
// 3001-4000笔单价4元，
// 4001-5000笔单价3元，
// 5001-6000笔单价2元，
// 6001以上单价1元，
int totalPrice(int trans) {
  Map<int, int> rules = {
    1: 0,
    5: 30,
    20: 20,
    50: 10,
    100: 9,
    500: 8,
    1000: 7,
    2000: 6,
    3000: 5,
    4000: 4,
    5000: 3,
    6000: 2,
    6001: 1
  };
  int res = 0;
  int lastKey = 1;
  rules.forEach((key, value) {
    if (trans > key) {
      res += (key - lastKey + 1) * value;
    } else {
      res += (trans - lastKey) * value;
    }
    lastKey = key;
  });
  return res;
}
