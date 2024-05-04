import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 56,
                  width: 56,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: Image.asset("assets/images/search.png"),
                ),
                Container(
                  height: 56,
                  width: 56,
                  padding: const EdgeInsets.all(5),
                  child: Image.asset("assets/images/men.png"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                  Text(
                    " Mar",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Text(
                "April",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Text(
                    " May",
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Days(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Ongoing",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 500,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "9AM",
                            style: TextStyle(fontSize: 14, color: Color(0xff8D8D8D)),
                          ),
                          Text(
                            "10AM",
                            style: TextStyle(fontSize: 14, color: Color(0xff8D8D8D)),
                          ),
                          Text(
                            "11AM",
                            style: TextStyle(fontSize: 14, color: Color(0xff8D8D8D)),
                          ),
                          Text(
                            "12PM",
                            style: TextStyle(fontSize: 14, color: Color(0xff8D8D8D)),
                          ),
                          Text(
                            "1PM",
                            style: TextStyle(fontSize: 14, color: Color(0xff8D8D8D)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Info(Color(0xffFFD29D), Color(0xffFF9E2D)), Info(Color(0xff5451D6), Color(0xff5451D6)), Info(Color(0xff5451D6), Color(0xff5451D6))],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Days extends StatelessWidget {
  const Days({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 20,
        ),
        Day("4", "Sat", Colors.white, Colors.white),
        const SizedBox(
          width: 20,
        ),
        Day("5", "Sun", const Color(0xff8B78FF), const Color(0xff5451D6)),
        const SizedBox(
          width: 20,
        ),
        Day("3", "Mon", Colors.white, Colors.white),
        const SizedBox(
          width: 20,
        ),
        Day("7", "Tue", Colors.white, Colors.white),
        const SizedBox(
          width: 20,
        ),
        Day("8", "Wen", Colors.white, Colors.white),
        const SizedBox(
          width: 20,
        ),
        Day("9", "Ther", Colors.white, Colors.white)
      ],
    );
  }
}

// ignore: must_be_immutable
class Day extends StatelessWidget {
  String day;
  String weekday;
  Color firstcolor;
  Color secondcolor;
  Day(this.day, this.weekday, this.firstcolor, this.secondcolor, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 25, right: 25),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), boxShadow: const [BoxShadow(blurRadius: 5, spreadRadius: 0, color: Color.fromARGB(255, 219, 218, 218))], gradient: LinearGradient(colors: [firstcolor, secondcolor])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            day,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: firstcolor != Colors.white ? Colors.white : Colors.black),
          ),
          Text(
            weekday,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: firstcolor != Colors.white ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  Color maincolor;
  Color secondcolor;
  Info(
    this.maincolor,
    this.secondcolor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            maincolor,
            secondcolor,
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Information Architecture",
            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const Text(
            "Saber & Oro",
            style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 44, height: 34, child: Image.asset("assets/images/group.png")),
              const Text(
                "Now",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
