class Player {
  String playerName;
  bool isActive;
  List<int> playerChoices;
  Player(
      {required this.playerName,
      required this.isActive,
      required this.playerChoices});
}

class Game {
  Player firstPlayer;
  Player secondPlayer;
  bool isThereAnyWinner;
  String? winnerName = null;
  List<bool> isBoxFilled = [false,false,false,false,false,false,false,false,false];
  static List<List<int>> toWin = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];
  Game({
    required this.firstPlayer,
    required this.secondPlayer,
    required this.isThereAnyWinner,
    this.winnerName
  });
}