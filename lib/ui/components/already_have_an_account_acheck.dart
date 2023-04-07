import 'package:flutter/material.dart';

import '../../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "" : "",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () => press,
          child: Row(
            children: [
              Text(
                login ? "Join Now ! " : "Login ",
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Image.asset(
                "assets/images/join.png",
                width: 18,
              ),
            ],
          ),
        )
      ],
    );
  }
}
