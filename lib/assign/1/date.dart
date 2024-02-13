import 'package:flutter/material.dart';

class date extends StatelessWidget {
  final String num;

  const date({
    super.key,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      " $num ",
      style: TextStyle(
        fontSize: 45,
        color: Colors.grey,
      ),
    );
  }
}
