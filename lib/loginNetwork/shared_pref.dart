import 'package:shared_preferences/shared_preferences.dart';
class CacheHelper {
  static SharedPreferences? sharedPrefrences;
  static  init()async{
    sharedPrefrences=await SharedPreferences.getInstance();
  }
  static Future<bool> put({
    required String key,
    required bool value}
      )async{
    return await sharedPrefrences!.setBool(key, value);
  }
  static bool? getval({
    required String key
  }){
    return sharedPrefrences!.getBool(key);
  }
  static Future<bool>  putToken({
    required String key,
    required dynamic value}
      )async{
    return await sharedPrefrences!.setString(key, value);
  }
  static String? getvalToken({
    required String key
  }){
    return sharedPrefrences!.getString(key);
  }
}