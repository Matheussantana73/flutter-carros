import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _textFormField(
            label: 'Login',
            hind: 'Digite o login',
          ),
          SizedBox(
            height: 20,
          ),
          _textFormField(
            label: 'Senha',
            hind: 'Digite a senha',
          ),
          SizedBox(
            height: 20,
          ),
          _raisedButton(
            text: 'Login',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  _raisedButton({@required text, @required onPressed}) {
    return Container(
      height: 45,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  TextFormField _textFormField({
    @required label,
    @required hind,
    password = false,
  }) {
    return TextFormField(
      obscureText: password,
      style: TextStyle(
        fontSize: 25,
        color: Colors.blue,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 25),
        hintText: hind,
        hintStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}
