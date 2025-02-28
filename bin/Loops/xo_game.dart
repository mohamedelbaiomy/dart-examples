import 'dart:io';

void main() {
  List<List<String?>> board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
  String currentPlayer = 'X';

  while (true) {
    printBoard(board);
    print("Player $currentPlayer's turn.");

    // Get user input
    stdout.write('Enter row (0-2) and column (0-2) separated by a space: ');
    String? input = stdin.readLineSync();
    if (input == null) {
      print('Invalid input. Please try again.');
      continue;
    }

    List<String> positions = input.split(' ');
    if (positions.length != 2) {
      print('Please enter two numbers.');
      continue;
    }

    int row = int.tryParse(positions[0]) ?? -1;
    int col = int.tryParse(positions[1]) ?? -1;

    // Validate input
    if (row < 0 || row > 2 || col < 0 || col > 2 || board[row][col] != null) {
      print('Invalid move. Try again.');
      continue;
    }

    // Place the mark
    board[row][col] = currentPlayer;

    // Check for a winner
    if (checkWinner(board, currentPlayer)) {
      printBoard(board);
      print('Player $currentPlayer wins!');
      break;
    }

    // Check for a draw
    if (board.every((row) => row.every((cell) => cell != null))) {
      printBoard(board);
      print('It\'s a draw!');
      break;
    }

    // Switch players
    currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
  }
}

void printBoard(List<List<String?>> board) {
  for (var row in board) {
    print(row.map((cell) => cell ?? ' ').join(' | '));
    print('---------');
  }
}

bool checkWinner(List<List<String?>> board, String player) {
  // Check rows, columns, and diagonals
  for (int i = 0; i < 3; i++) {
    if (board[i].every((cell) => cell == player) ||
        board.map((row) => row[i]).every((cell) => cell == player)) {
      return true;
    }
  }
  return (board[0][0] == player &&
          board[1][1] == player &&
          board[2][2] == player) ||
      (board[0][2] == player && board[1][1] == player && board[2][0] == player);
}
