import '9_factorial.dart';

void main() {
  print(permutation(totalNumber: 3, selectionNumber: 2));
  print(permutation(totalNumber: 4, selectionNumber: 2));
  print(permutation(totalNumber: 10, selectionNumber: 3));
  print(permutation(totalNumber: 10, selectionNumber: 7));
}

/// # formula is P(n,r) = n! / (n - r)!
double permutation({required int totalNumber, required int selectionNumber}) {
  if (selectionNumber > totalNumber) {
    return throw ("Selection number must not greater than total number");
  }
  return factorial(number: totalNumber) /
      factorial(number: (totalNumber - selectionNumber));
}
