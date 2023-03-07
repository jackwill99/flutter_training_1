import 'dart:io';

void main() {
  // 1. get the file
  final rwFile = File("./read_write.txt");

  // 2. open the file to write
  final ref = rwFile.openSync(mode: FileMode.write);

  // 3. writhe the file as your string
  ref.writeStringSync("Hello this is the file io");

  ref.close();
}
