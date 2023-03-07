import 'dart:io';
import 'dart:math';

void main() {
  String? userName;
  while (userName == null || userName.trim().isEmpty) {
    print("Enter your name");
    userName = stdin.readLineSync();
  }

  // user balance
  int balance = checkInteger(outputStr: "Enter your desired balance");

  final userGuess = Guess(balance: balance, name: userName);

  // user earn money to play match
  final earn = checkInteger(outputStr: "Enter your earned money to play match");
  userGuess.setEarn(value: earn);

  final guessNumber =
      checkInteger(maxNumber: 10, outputStr: "Enter your guess Number");
  print(guessNumber);
}

int checkInteger({int? maxNumber, String? outputStr}) {
  int? amount;
  while (amount == null) {
    print(outputStr);
    final userInputBalance = stdin.readLineSync();
    if (userInputBalance != null && userInputBalance.trim().isNotEmpty) {
      final convertIntNumber = int.parse(userInputBalance);

      print(!convertIntNumber.isNegative);
      print(convertIntNumber > 0);
      if ((!convertIntNumber.isNegative && convertIntNumber > 0)) {
        if (maxNumber != null) {
          if (convertIntNumber < maxNumber) {
            amount = convertIntNumber;
            break;
          }
          continue;
        } else {
          amount = convertIntNumber;
        }
      }
    }
  }
  return amount;
}

// 1. User register to play game (including user money)

// 2. Earn ur money

// 3. Guess ur number between 1 to 9

// 4. Calculate win or lose with the process of +2 or -2

// 5. Check user can play to continue and if can, ask to play again

class Guess {
  final String name;
  // user money
  final int balance;

  late int earn;

  late bool play;

  /// # This class is to guess the number between 1 to 9 and if you are win, you can paly to continue
  /// ```
  ///  final String a = "my name is jack";
  /// ```
  Guess({required this.balance, required this.name});

  // random number need
  // guess number need

  // this is guess methods
  void winOrLose() {}

  void setEarn({required int value}) {
    earn = value;
  }

  void guessNumber({required int value}) {
    final randomNumber = Random().nextInt(9) + 1;
  }
}
