import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'grpc_client.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 50),
              ),
              RaisedButton(
                  onPressed: () => _pushPage(context, new SignInPage()),
                  textColor: Colors.white,
                  color: Colors.orangeAccent,
                  child: Text('Login'),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
              Divider(
                height: 10,
              ),
              RaisedButton(
                  onPressed: () => _testGrpc(),
                  textColor: Colors.white,
                  color: Colors.orangeAccent,
                  child: Text('Test Grpc'),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ],
          ),
        )
      ],
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }

  void _testGrpc() {
    sayHello("Robin");
  }
}
