import '9_factorial.dart';

void main() {
  print(combination(totalNumber: 3, selectionNumber: 2));
  print(combination(totalNumber: 4, selectionNumber: 2));
  print(combination(totalNumber: 10, selectionNumber: 3));
  print(combination(totalNumber: 10, selectionNumber: 7));
  print(combination(totalNumber: 15, selectionNumber: 5));
}

/// # formula is C(n,k) = n! / (k! * (n - k)!)
double combination({required int totalNumber, required int selectionNumber}) {
  if (selectionNumber > totalNumber) {
    return throw ("Selection number must not greater than total number");
  }
  return factorial(number: totalNumber) /
      (factorial(number: selectionNumber) *
          factorial(number: totalNumber - selectionNumber));
}
