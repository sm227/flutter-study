import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/assign/2/timeButton.dart';
import 'package:untitled/main.dart';

void main() {
  runApp(Pomodoro());
}

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => PomodoroState();
}

class PomodoroState extends State<Pomodoro> {
  static int twentyFiveMinutes = 2;
  int totalSeconds = twentyFiveMinutes;
  bool isRunning = false;
  late Timer timer;
  int totalPomodoro = 0;
  int totalGoal = 0;
  bool breakTime = false;

  set time(int a) => totalSeconds = a;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        if (breakTime) {
          breakTime = false;
          twentyFiveMinutes = 2;
          totalSeconds = twentyFiveMinutes;
        } else {
          if (totalPomodoro != 1) {
            totalPomodoro += 1;
          } else {
            breakTime = true;
            setRound();
          }
          isRunning = false;
          totalSeconds = twentyFiveMinutes;
        }
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void skipPressed() {
    setState(() {
      timer.cancel();
      breakTime = false;
      twentyFiveMinutes = 2;
      totalSeconds = twentyFiveMinutes;
    });
  }

  void setRound() {
    setState(() {
      totalPomodoro = 0;
      totalGoal += 1;
      twentyFiveMinutes = 5;
      timer = Timer.periodic(Duration(seconds: 1), onTick);
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    setState(() {
      timer.cancel();
      totalSeconds = twentyFiveMinutes;
      isRunning = false;
    });
  }

  void setTimePressed(int a) {
    setState(() {
      totalSeconds = a;
    });
  }

  String format(int seconds, a, b) {
    var duration = Duration(seconds: seconds);

    String result = duration.toString().split(".").first.substring(a, b);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 89, 89),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'POMOTIMER',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2),
                ),
              ),
            ),
            Flexible(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(120, 255, 255, 255),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 110,
                            height: 14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(164, 255, 255, 255),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -15),
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                            child: Text(
                              format(totalSeconds, 2, 4),
                              style: TextStyle(
                                  fontSize: 60,
                                  color: Color.fromARGB(255, 246, 89, 89),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(0, -25),
                      child: Text(
                        " : ",
                        style: TextStyle(
                            fontSize: 60,
                            color: Color.fromARGB(148, 238, 238, 238)),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(120, 255, 255, 255),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 110,
                            height: 14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(164, 255, 255, 255),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -15),
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                            child: Text(
                              format(totalSeconds, 5, 7),
                              style: TextStyle(
                                  fontSize: 60,
                                  color: Color.fromARGB(255, 246, 89, 89),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            // 시간 선택 부분
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        timerButton("2", 2),
                        timerButton("20", 1200),
                        timerButton("25", 1500),
                        timerButton("30", 1800),
                        timerButton("35", 2100),
                        timerButton("40", 2400),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                )
              ],
            ),
            Flexible(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    !breakTime
                        ? Column(
                            children: [
                              IconButton(
                                iconSize: 120,
                                color: Color.fromRGBO(0, 0, 0, 0.301),
                                onPressed:
                                    isRunning ? onPausePressed : onStartPressed,
                                icon: Icon(isRunning
                                    ? Icons.pause_circle_outline
                                    : Icons.play_circle_outline),
                              ),
                              OutlinedButton(
                                onPressed: onResetPressed,
                                child: Text(
                                  "RESET",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Text(
                                'Take a rest!',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              OutlinedButton.icon(
                                onPressed: skipPressed,
                                icon: Icon(
                                  Icons.skip_next_rounded,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  "SKIP",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "${totalPomodoro}/2",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(217, 224, 224, 224),
                          ),
                        ),
                        Text(
                          "ROUND",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "${totalGoal}/12",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(217, 224, 224, 224),
                          ),
                        ),
                        Text(
                          "GOAL",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Container timerButton(String a, int b) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            twentyFiveMinutes = b;
            totalSeconds = twentyFiveMinutes;
          });
        },
        style: OutlinedButton.styleFrom(
          fixedSize: Size(83, 55),
          backgroundColor: twentyFiveMinutes == b
              ? Colors.white
              : Color.fromARGB(255, 246, 89, 89),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: Text(
          a,
          style: TextStyle(
            overflow: TextOverflow.visible,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: twentyFiveMinutes == b
                ? Color.fromARGB(255, 246, 89, 89)
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
