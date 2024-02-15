import 'package:flutter/material.dart';
import 'package:untitled/assign/2/main.dart';

class TimeButton extends StatefulWidget {
  final time;
  final setTime;

  const TimeButton({
    super.key,
    this.time,
    this.setTime,
  });

  @override
  State<TimeButton> createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  final home = PomodoroState();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, top: 30),
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            home.time = widget.setTime;
          });
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: Text(
          widget.time,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
