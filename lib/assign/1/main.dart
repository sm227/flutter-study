import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/assign/1/date.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(34, 34, 34, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 73,
                      color: Colors.white,
                    ),
                    Text(
                      "+",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Monday 16',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        "TODAY",
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "•",
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.red,
                        ),
                      ),
                      date(
                        num: "17 18 19 20 21 22 23 24",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 220,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.yellow[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, left: 20, top: 30, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "11",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -2,
                                      height: 0.8),
                                ),
                                Text(
                                  "30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(fontSize: 20, height: 1),
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -2,
                                    height: 0.8,
                                  ),
                                ),
                                Text(
                                  "30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "DESIGN\nMEETING",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                height: 0.9,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "       ALEX  HELLENA  NANA",
                              style: TextStyle(
                                  wordSpacing: 20,
                                  color:
                                      const Color.fromARGB(255, 147, 147, 147),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(145, 90, 179, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, left: 20, top: 30, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -2,
                                      height: 0.8),
                                ),
                                Text(
                                  "35",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(fontSize: 20, height: 1),
                                ),
                                Text(
                                  "14",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -2,
                                    height: 0.8,
                                  ),
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "DAILY\nPROJECT",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                height: 0.9,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "       ME  RICHARD  CIRY +4",
                              style: TextStyle(
                                  wordSpacing: 20,
                                  color:
                                      const Color.fromARGB(255, 147, 147, 147),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 160, 241, 135),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, left: 20, top: 30, right: 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "15",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -2,
                                      height: 0.8),
                                ),
                                Text(
                                  "00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(fontSize: 20, height: 1),
                                ),
                                Text(
                                  "16",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -2,
                                    height: 0.8,
                                  ),
                                ),
                                Text(
                                  "30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "WEEKLY\nPLANNING",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                height: 0.9,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 39,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "       DEN  NANA  MARK",
                              style: TextStyle(
                                  wordSpacing: 20,
                                  color:
                                      const Color.fromARGB(255, 147, 147, 147),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
