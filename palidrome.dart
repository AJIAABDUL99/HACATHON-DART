bool isPalindrome(dynamic input) {
  // Convert the input to a string and clean it
  String inputString = input.toString().toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  // Reverse the string
  String reversedString = inputString.split('').reversed.join('');

  // Check if the reversed string is equal to the original cleaned string
  return inputString == reversedString;
}

void main() {
  var testCases = [
    'A man, a plan, a canal: Panama',
    'Was it a car or a cat I saw?',
    'Madam, in Eden, I\'m Adam',
    'No lemon, no melon',
    '12321',
    'racecar',
    'hello',
    'world',
    '12345',
    'Able, was I saw Ajia?',
    'Able, was I saw Ajia',
    'Able, was I saw ajIA!',
    'Able, was I saw Ajia?',
    'Able, was I saw Hussein?',
    'Able, was I saw Said?',
    'Able, was I saw Abdallah?',
  ];

  for (var testCase in testCases) {
    print('"$testCase" is palindrome: ${isPalindrome(testCase)}');
  }
}
