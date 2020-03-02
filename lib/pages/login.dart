import 'package:carros/widgets/app_button.dart';
import 'package:carros/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginController = TextEditingController();

  final _passwordController = TextEditingController();
  final _focusPassword = FocusNode();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Carros'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            AppTextFormField(
              label: 'Login',
              hind: 'Digite o login',
              controller: _loginController,
              validate: _validateLogin,
              textInputAction: TextInputAction.next,
              nextFocusNode: _focusPassword,
            ),
            SizedBox(
              height: 20,
            ),
            AppTextFormField(
              label: 'Senha',
              hind: 'Digite a senha',
              password: true,
              controller: _passwordController,
              validate: _validatePassword,
              keyboardType: TextInputType.number,
              focusNode: _focusPassword,
            ),
            SizedBox(
              height: 20,
            ),
            AppRaisedButton(
              text: 'Login',
              onPressed: _onPressedLogin,
            ),
          ],
        ),
      ),
    );
  }

  void _onPressedLogin() {
    String login = _loginController.text;
    String password = _passwordController.text;

    if (!_formKey.currentState.validate()) return;

    print('Login: $login \nPassword: $password');
  }

  String _validateLogin(text) {
    if (text.isEmpty) {
      return 'Informe seu login';
    }
    return null;
  }

  String _validatePassword(text) {
    if (text.isEmpty) {
      return 'Informe sua senha';
    }
    return null;
  }
}
