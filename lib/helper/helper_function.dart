import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  //keys
  static String userLoggedInKey = 'LOGGEDINKEY';
  static String userEmailKey = 'USEREMAILKEY';
  static String userNameKey = "NAMEKEY";

  // saving data to SF

  // getting data from SF
  static Future<bool?> getLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}
