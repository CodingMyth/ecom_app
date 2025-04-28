import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationExtention on BuildContext{
  AppLocalizations get localization{
    return AppLocalizations.of(this)!;
  }
}