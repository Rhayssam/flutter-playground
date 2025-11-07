import 'package:flutterplayground/data/enum/languages_enum.dart';
import 'package:get/get.dart';

class SegmentedButtonController extends GetxController {
  final Rx<LanguagesEnum> languageView = LanguagesEnum.dart.obs;

  void updateSelectedLanguage(LanguagesEnum newValue) {
    languageView.value = newValue;
  }
}
