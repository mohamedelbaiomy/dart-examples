void main() {
  // Capitalize the first character of the first word

  String text = "mohamed elbaiomy";
  print(text[0].toUpperCase() + text.substring(1));

  // Capitalize the first character of the first and second word

  List<String> words = text.split(" ");
  print(
      "${words[0][0].toUpperCase() + words[0].substring(1)} ${words[1][0].toUpperCase() + words[1].substring(1)}");
}
