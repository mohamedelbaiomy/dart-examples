import 'dart:io';

void main() {
  List<Map<String, String>> movies = [
    {"title": "The Shawshank Redemption", "genre": "Drama"},
    {"title": "The Godfather", "genre": "Crime"},
    {"title": "The Dark Knight", "genre": "Action"},
    {"title": "Pulp Fiction", "genre": "Crime"},
    {
      "title": "The Lord of the Rings: The Return of the King",
      "genre": "Fantasy"
    },
  ];

  print("What's your favorite movie genre? (Drama, Crime, Action, Fantasy)");
  String genre = stdin.readLineSync()!;
  bool isFound = false;
  for (var movie in movies) {
    if (movie["genre"] == genre) {
      print("You might also enjoy: ${movie["title"]}");
      isFound = true;
    } else if (genre == "all") {
      print("Here are some recommendations:");
      print(movie["title"]);
    }
  }
  if (isFound == false) {
    print("Invalid choice");
  }
}
