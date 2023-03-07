void main() {
  print(factorial(number: 4));
}

int factorial({required int number}) {
  if (number <= 1) {
    return 1;
  } else {
    return number * factorial(number: (number - 1));
  }
}
