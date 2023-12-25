import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/dice_models.dart';

part 'dice_rndm_nmbrs_provider.g.dart';

@riverpod
class DiceRndmNmbrsNotifier extends _$DiceRndmNmbrsNotifier {
  @override
  DiceModel build() {
    return DiceModel(right: 1, left: 3);
  }

  void changeDice() {
    final random = Random();

    final diceModel = DiceModel(
      right: random.nextInt(6) + 1,
      left: random.nextInt(6) + 1,
    );
    state = diceModel;
  }

  void restart() {
    final diceModel = DiceModel(
      right: 1,
      left: 1,
    );

    state = diceModel;
  }
}
