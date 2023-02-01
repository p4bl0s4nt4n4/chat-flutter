import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  Boton({
    Key? key,
    required this.text,
    this.onPressed
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: this.onPressed,
        child: Container(
          width: double.infinity,
          height: 55,
          child: Center(
            child: Text(this.text),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder()
        )
    );
  }

}