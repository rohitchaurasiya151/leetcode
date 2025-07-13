class Solution {
 String longestPalindrome(String s) {
    if (s.isEmpty) return "";

    int start = 0, end = 0;

    for (int i = 0; i < s.length; i++) {
      int len1 = expandFromCenter(s, i, i);       // odd-length palindrome
      int len2 = expandFromCenter(s, i, i + 1);   // even-length palindrome
      int len = len1 > len2 ? len1 : len2;

      if (len > end - start) {
        start = i - ((len - 1) ~/ 2);
        end = i + (len ~/ 2);
      }
    }

    return s.substring(start, end + 1);
  }

  int expandFromCenter(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return right - left - 1; // actual length of the palindrome
  }
}

void main() {
  var solution = Solution();
  print(solution.longestPalindrome("RohitChaurasiya")); 
  print(solution.longestPalindrome("babad")); // Output: "bab" or "aba"
}