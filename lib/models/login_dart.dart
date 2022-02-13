class LoginData {
  final String _email;
  final String _password;

  LoginData({
    required final String email,
    required final String password,
  })  : _email = email,
        _password = password;

  String get email => _email;

  String get password => _password;

}
