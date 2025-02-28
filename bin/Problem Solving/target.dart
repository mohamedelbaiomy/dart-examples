// Given an array of integers numbers and an integer target,
// return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]

// Input: nums = [3,3], target = 6
// Output: [0,1]

import 'dart:io';

void main() {
  List<int> index = [];
  List<int> items = [];

  print("pleas enter your target");
  int target = int.parse(stdin.readLineSync()!);
  print("enter the length of the list");
  int listLength = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < listLength; i++) {
    print("please enter your value of index $i");
    int value = int.parse(stdin.readLineSync()!);
    items.add(value);
  }

  for (int i = 0; i < items.length; i++) {
    for (int j = 0; j < items.length; j++) {
      if (items[i] + items[j] == target) {
        index.addAll([i, j]);
      }
    }
  }
  print(index.toSet().toList());
}
