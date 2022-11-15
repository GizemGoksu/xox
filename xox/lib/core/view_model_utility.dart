import '../models/game_model.dart';

class ViewModelUtility {
  static void playerMove(
      Player activePlayer, Player unactivePlayer, int boxNumber) {
    activePlayer.isActive = true;
    unactivePlayer.isActive = false;
    activePlayer.playerChoices.add(boxNumber);
  }

  static int? isThereAnyWinnerCheck(
      Game game, Function func, int numberOfBoxClicking) {
    int i = 0;
    int? index = null;
    String draw = "draw";
    while (i < Game.toWin.length && game.isThereAnyWinner == false) {
      if (Game.toWin[i].every(
          (element) => game.firstPlayer.playerChoices.contains(element))) {
        game.isThereAnyWinner = true;
        index = i;
        game.winnerName = "First player";
        func('The winner is player 1');
      }
      if (Game.toWin[i].every(
          (element) => game.secondPlayer.playerChoices.contains(element))) {
        game.isThereAnyWinner = true;
        index = i;
        game.winnerName = "Second player";
        func('The winner is player 2');
      }
      i++;
    }
    if (game.isThereAnyWinner == false && numberOfBoxClicking == 9) {
      func(draw);
    }
    return index;
  }
}
