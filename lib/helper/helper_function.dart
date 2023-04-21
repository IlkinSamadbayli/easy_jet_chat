import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  //keys
  static String userLoggedInKey = 'LOGGEDINKEY';
  static String userEmailKey = 'USEREMAILKEY';
  static String userNameKey = "NAMEKEY";

  // saving data to SF
  static Future<bool> savedLoginKey(bool isLoginSaved) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isLoginSaved);
  }

  static Future<bool> savedEmailKey(String isEmailSaved) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, isEmailSaved);
  }

  static Future<bool> savedNameKey(String isNameSaved) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, isNameSaved);
  }

  // getting data from SF
  static Future<bool?> getLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}
