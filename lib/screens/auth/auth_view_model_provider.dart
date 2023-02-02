import 'package:flutter/cupertino.dart';

class AuthViewModel extends ChangeNotifier{
  String _email ='';

  String get email => _email;

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  String _password='';

  String get password => _password;

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  String _confirmPassword ='';

  String get confirmPassword => _confirmPassword;

  set confirmPassword(String value) {
    _confirmPassword = value;
    notifyListeners();
  }

  bool _loading = false;

  bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  String? emailValidate(String value){
    const String format = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
    return !RegExp(format).hasMatch(value) ? "Enter a valid mail" : null;
  }

  Future<void> login() async {

  }


}