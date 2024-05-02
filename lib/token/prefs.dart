import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton()
class PreferencesService {
  late final SharedPreferences _prefs;

  static const String tokenKeyKey =
      '';
      //Bearer 22|2GLyG1TojxizAoIDoEBpimPWp1LiSo4IqrT25Otofc3e3ea0
  static const String userIdKey = 'userId';

  late String _tokenKey = '';
  int? _userId;
  String get tokenKey => _tokenKey;
  int? get userId => _userId;

  PreferencesService() {
    _init();
  }

  void _init() async {
    _prefs = await SharedPreferences.getInstance();
    _tokenKey = _prefs.getString(tokenKeyKey) ?? '';
  }

  void setUser(String tokenKey, int userId) {
    _tokenKey = tokenKey;
    _prefs.setString(tokenKeyKey, tokenKey);

    _userId = userId;
    _prefs.setInt(userIdKey, userId);
  }

  void deleteUser() {
    _prefs.remove(userIdKey);
    _prefs.remove(tokenKey);
  }

  void setTokenKey(String value) {
    _tokenKey = value;
    _prefs.setString(tokenKeyKey, value);
  }
}
