List<int> quickSort(List<int> arr) {
  // Base case: if the array has 0 or 1 element, it is already sorted
  if (arr.length <= 1) {
    return arr;
  }

  // Select the pivot as the middle element
  int pivot = arr[arr.length ~/ 2];

  // Create left and right arrays
  List<int> left = [];
  List<int> right = [];

  // Partition the array into two lists based on the pivot
  for (int i = 0; i < arr.length; i++) {
    // Skip the pivot element (to avoid comparing it with itself)
    if (i == arr.length ~/ 2) continue;

    if (arr[i] < pivot) {
      left.add(arr[i]);
    } else {
      right.add(arr[i]);
    }
  }

  // Recursively sort the left and right sublists and combine them with the pivot
  return [...quickSort(left), pivot, ...quickSort(right)];
}

void main() {
  List<int> arr = [33, 10, 55, 71, 29, 3, 18];
  print('Original Array: $arr');
  List<int> sortedArr = quickSort(arr);
  print('Sorted Array: $sortedArr');
}
