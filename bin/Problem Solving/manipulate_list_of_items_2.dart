// print first and last item of list
void main() {
  List<int> numbers = [0, 5, 10, 15, 20, 25, 77, 99, 90, 4];
  List<int> emptyList = [];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == numbers[0]) {
      emptyList.add(numbers[i]);
      emptyList.add(numbers[numbers.length - 1]);
    }
  }
  print(emptyList);
}
