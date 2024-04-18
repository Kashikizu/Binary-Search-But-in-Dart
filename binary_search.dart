/* 
 * @author Kashikizu
 * Creation Date: 17/04/2024
 * Initial Completion Date: 18/04/24
 */

import 'dart:math';
//import 'dart:io';
/*
 * This is just the algorithm and NOT the final product
*/

void main(List<String> arguments) {
  var a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("Set of elements: $a");
  var key = Random().nextInt(15);
  print("Number that will be searched for: $key");
  bool ans = binarySearch(a, key);
  if(ans){
    print("$key is in the set");
  }
  else{
    print("$key is not in the list");
  }
}

bool binarySearch(var list, key) {
  int lo = 0, hi = list.length - 1;
  while (lo <= hi) {
    int mid = (lo + hi) ~/ 2;
    if (list[mid] == key) {
      return true;
    } else if (list[mid] > key) {
      hi = mid - 1;
    } else {
      lo = mid + 1;
    }
  }
  return false;
}
