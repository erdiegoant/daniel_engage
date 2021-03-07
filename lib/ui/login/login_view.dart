import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  final String pageTitle;

  const LoginView({Key key, this.pageTitle}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String title = 'login';

  void setTitle() {
    title = 'otra cosa';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(title),
              ElevatedButton(
                onPressed: setTitle,
                child: Text('press me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
