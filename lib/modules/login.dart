import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xffB9C2D1),
              ),
            ),
            Text(
              "Sign In",
              style: theme.textTheme.headline5,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xffB9C2D1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
