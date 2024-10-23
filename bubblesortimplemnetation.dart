List<int> bubbleSort(List<int> arr) {
  int n = arr.length;  // Get the length of the array

  // Outer loop to go through the entire array
  for (int i = 0; i < n - 1; i++) {

    // Inner loop to compare adjacent elements
    for (int j = 0; j < n - i - 1; j++) {
      // If the current element is greater than the next, swap them
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }

  return arr;  // Return the sorted array
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  print('Original Array: $arr');
  List<int> sortedArr = bubbleSort(arr);
  print('Sorted Array: $sortedArr');
}
