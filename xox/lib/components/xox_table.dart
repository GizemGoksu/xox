import 'package:flutter/material.dart';
import 'package:xox/core/base.utility.dart';
import 'package:xox/models/line_model.dart';
import 'package:xox/core/view_model_utility.dart';
import '../models/game_model.dart';
import 'player_signs.dart';

class XoxTable extends StatefulWidget {
  const XoxTable({Key? key, required this.callBackFunction}) : super(key: key);
  final Function callBackFunction;

  @override
  State<XoxTable> createState() => _XoxTableState();
}

class _XoxTableState extends State<XoxTable> {
  Player firstPlayer =Player(playerName: 'First player', isActive: false, playerChoices: []);
  Player secondPlayer =Player(playerName: 'Second player', isActive: false, playerChoices: []);
  late Game game = Game(firstPlayer: firstPlayer,secondPlayer: secondPlayer,isThereAnyWinner: false);
  int numberOfBoxClicking = 0;
  int? index;
  int i = 0;
  void restartTheGame(){
    setState(() {
      game.firstPlayer.isActive = false;
      game.secondPlayer.isActive = false;
      game.firstPlayer.playerChoices.clear();
      game.secondPlayer.playerChoices.clear();
      game.isBoxFilled = List.filled(9, false);
      game.isThereAnyWinner = false;
      game.winnerName = null;
      numberOfBoxClicking = 0;
      index = null;
      widget.callBackFunction("");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          gameTable(),
          indexedStackForLines()
        ]),
        customSpace(15),
        restartButton(),
      ],
    );
  }

  SizedBox indexedStackForLines() {
    return SizedBox(
          height: 300,
          width: 300,
          child: IndexedStack(index: index, children: lineWidgets),
        );
  }

  Table gameTable() {
    return Table(
          border: tableBorder(),
          columnWidths: tableColumnWidths,
          children: tableRows,
        );
  }

  IconButton restartButton() {
    return IconButton(
      onPressed:(() => restartTheGame()),
      icon: restartIcon(),
    );
  }

  List<TableRow> get tableRows =>
      [numeratedRow(0), numeratedRow(3), numeratedRow(6)];

  Map<int, TableColumnWidth> get tableColumnWidths {
    return <int, TableColumnWidth>{
      0: AppComponentSizes.tableFixedColumnWidth,
      1: AppComponentSizes.tableFixedColumnWidth,
      2: AppComponentSizes.tableFixedColumnWidth,
    };
  }

  TableBorder tableBorder() {
    return TableBorder.symmetric(
        inside: BorderSide(
            color: AppColor.black, width: AppComponentSizes.tableBorderWidth));
  }

  TableRow numeratedRow(int startingBoxIndex) {
    return TableRow(children: [
      tableBox(startingBoxIndex),
      tableBox(startingBoxIndex + 1),
      tableBox(startingBoxIndex + 2),
    ]);
  }

  Stack tableBox(int boxIndex) {
    return Stack(children: [
      InkWell(
        onTap: game.isBoxFilled[boxIndex] == false &&
                game.isThereAnyWinner == false
            ? (() {
                setState(() {
                  game.isBoxFilled[boxIndex] = true;
                  numberOfBoxClicking++;
                  if (numberOfBoxClicking % 2 == 1) {
                    ViewModelUtility.playerMove(
                        game.firstPlayer, game.secondPlayer, boxIndex);
                    index = ViewModelUtility.isThereAnyWinnerCheck(
                        game, widget.callBackFunction, numberOfBoxClicking);
                  } else {
                    ViewModelUtility.playerMove(
                        game.secondPlayer, game.firstPlayer, boxIndex);
                    index = ViewModelUtility.isThereAnyWinnerCheck(
                        game, widget.callBackFunction, numberOfBoxClicking);
                  }
                });
              })
            : null,
        child: blankBox(),
      ),
      game.isBoxFilled[boxIndex] == true
          ? firstPlayer.playerChoices.contains(boxIndex)
              ? crossSign(
                  AppComponentSizes.crossSignHeightInTheTable,
                  AppComponentSizes.crossSignWidthInTheTable,
                  AppPadding.crossSignInTheTable)
              : secondPlayer.playerChoices.contains(boxIndex)
                  ? circleSign(AppComponentSizes.circleRadiusInTheTable,
                      AppPadding.circleSignInTheTable)
                  : const SizedBox()
          : const SizedBox()
    ]);
  }
}
