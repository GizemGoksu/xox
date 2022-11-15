import 'package:flutter/material.dart';
import 'package:xox/components/player_signs.dart';
import 'package:xox/components/xox_table.dart';
import 'package:xox/core/base.utility.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String theWinner = "";
  callbackFunction(playerName) {
    setState(() {
      theWinner = playerName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Center(
          child: Column(
            children: [
              customSpace(50),
              customText('XOX', TextStyles.gameTitle),
              customSpace(20),
              customText(theWinner, TextStyles.gameResult),
              customSpace(30),
              XoxTable(callBackFunction: callbackFunction),
              playerInformationRow(),
            ],
          ),
        ));
  }

  Row playerInformationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        firstPlayerTextSignBox(),
        secondPlayerTextSignBox(),
      ],
    );
  }

  Padding secondPlayerTextSignBox() {
    return Padding(
      padding: AppPadding.secondPlayerSignBox,
      child: Column(
        children: [
          customText('Player 2', TextStyles.secondPlayer),
          circleSign(AppComponentSizes.circleRadiusInTheSignBox,
              AppPadding.circleSignInTheSignBox),
        ],
      ),
    );
  }

  Padding firstPlayerTextSignBox() {
    return Padding(
      padding: AppPadding.firstPlayerSignBox,
      child: Column(
        children: [
          customText('Player 1', TextStyles.firstPlayer),
          crossSign(
              AppComponentSizes.crossSignHeightInTheSignBox,
              AppComponentSizes.crossSignWidthInTheSignBox,
              AppPadding.crossSignInTheSignBox)
        ],
      ),
    );
  }
}
