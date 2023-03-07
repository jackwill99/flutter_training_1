void main() {
  GeneralIdIncrement.autoIncrese(input: "M_000005", count: 10);
}

class GeneralIdIncrement {
  static autoIncrese({required String input, int count = 5}) {
    input.padLeft(5);
    String strKey = input.substring(2); // 000025
    int intKey = int.parse(strKey); // 25

    String newStrKey = "M_";
    int newIntKey = 0;

    String replacementStr = "";
    int replacementCount = 0;
    for (var i = 0; i < count - 1; i++) {
      replacementStr += "9";
    }
    replacementCount = int.parse(replacementStr);

    if (intKey <= replacementCount) {
      for (var i = 0; i < (count - intKey.toString().length); i++) {
        newStrKey += "0";
      }
    }
    newIntKey = intKey + 1;
    newStrKey += newIntKey.toString();

    print(newStrKey);
  }
}
