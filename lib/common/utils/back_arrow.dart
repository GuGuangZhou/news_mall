import 'package:flutter/material.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset("assets/images/default/backArrow.png"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
