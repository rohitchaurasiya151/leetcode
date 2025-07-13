class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    var lis = [...nums1, ...nums2];
    lis.sort();
    if (lis.length % 2 == 1) {
      return lis[lis.length ~/ 2].toDouble();
    } else {
      return (lis[lis.length ~/ 2 - 1] + lis[lis.length ~/ 2]).toDouble() / 2;
    }
  }
}

void main() {
  var solution = Solution();
  print(solution.findMedianSortedArrays([1, 3], [2])); // Output: 2.0
  print(solution.findMedianSortedArrays([1, 2], [3, 4])); // Output: 2.5
}
