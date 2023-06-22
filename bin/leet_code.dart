
// ignore: avoid_relative_lib_imports
import '../lib/src/reverse_words_in_a_string_iii.dart' as reverse_words;
// ignore: avoid_relative_lib_imports
import '../lib/src/plu_one.dart' as plu_one;
import '../lib/src/sqrtx.dart' as sqrtx;

void main(List<String> arguments) {
  // 测试reverseWords
  print(reverse_words.Solution().reverseWords("God Ding"));
  print(reverse_words.Solution().reverseWords("Let's take LeetCode contest"));

  // 测试plusOne
  print(plu_one.Solution().plusOne([1,2,3]));
  print(plu_one.Solution().plusOne([4,3,2,1]));
  print(plu_one.Solution().plusOne([9,9,9]));
  print(plu_one.Solution().plusOne([8,9,9,9]));

  print(sqrtx.Solution().mySqrt(8));
  print(sqrtx.Solution().mySqrt(3));
  print(sqrtx.Solution().mySqrt(1024));
}
