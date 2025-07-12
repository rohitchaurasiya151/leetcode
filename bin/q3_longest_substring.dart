class Solution {
  int lengthOfLongestSubstring(String s) {
 
    if (s.length > 50000) return 0;
    int maxLength = 0;
    int left = 0;
    Set<String> seen = {};

    for (int right = 0; right < s.length; right++) {
      while (seen.contains(s[right])) {
        seen.remove(s[left]);
        left++;
      }
      seen.add(s[right]);
      maxLength = maxLength > (right - left + 1) ? maxLength : (right - left + 1);
    }

    return maxLength;
  }
}

void main() {
  print(Solution().lengthOfLongestSubstring("abcabcbb")); // Output: 3
  
}
