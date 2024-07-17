import 'package:doctorna/core/consts/pref_keys.dart';
import 'package:doctorna/core/helpers/extensions.dart';
import 'package:doctorna/core/helpers/shared_prefs.dart';

class AppGlobals {
  static bool isUserLoggedIn = false;

  static checkUserLoggedIn() async {
    String token = await SharedPrefHelper.getString(PrefKeys.userToken);
    if (token.isNullOrEmpty()) {
      isUserLoggedIn = false;
    } else {
      isUserLoggedIn = true;
    }
  }
}
