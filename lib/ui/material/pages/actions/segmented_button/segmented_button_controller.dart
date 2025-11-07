import 'package:flutterplayground/data/enum/fruits_enum.dart';
import 'package:flutterplayground/data/enum/languages_enum.dart';
import 'package:get/get.dart';

class SegmentedButtonController extends GetxController {
  final Rx<LanguagesEnum> languageView = LanguagesEnum.dart.obs;

  final RxSet<FruitsEnum> fruitView = <FruitsEnum>{}.obs;

  void updateSelectedLanguage(LanguagesEnum newValue) {
    languageView.value = newValue;
  }

  void updateSelectedFruits(Set<FruitsEnum> newSelection) {
    fruitView.value = newSelection;
  }
}
