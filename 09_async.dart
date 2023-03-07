void main() async {
  // first method
  final userId = await getUserId();
  printUserId(id: userId);

  // second method
  await getUserId().then((value) {
    printUserId(id: value);
  });

  // ClassDoc.printStatic();

  /// try catch
  // try {
  //   final int a = int.parse("a");
  //   print(a);
  // } catch (e) {
  //   print("your result is false");
  // }

  // try {
  //   changeToInt(value: "a");
  // } catch (e) {
  //   print(e.toString());
  // }
}

Future<int> getUserId() async {
  print("Fetching your data from server");
  await Future.delayed(Duration(seconds: 2));
  print("done your data is here");
  return 3;
}

void printUserId({required int id}) {
  print("Your user id is $id");
}

// class doc

/// this is class doc
class ClassDoc {
  ClassDoc.namedConstructor();

  static void printStatic() {}
}

/// try catch func
///
int changeToInt({required String value}) {
  try {
    return int.parse(value);
  } catch (_) {
    throw ("Your value can't change to integer");
  }
}
