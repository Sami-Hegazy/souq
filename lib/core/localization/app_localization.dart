import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:souqvibes/core/localization/ar/ar_translation.dart';
import 'package:souqvibes/core/localization/en_us/en_us_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'ar': ar,
      };
}
