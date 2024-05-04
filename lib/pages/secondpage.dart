import 'package:flutter/material.dart';
import 'package:task_maneger/pages/datapage.dart';

class StatfulPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondMainPage();
  }
}

class SecondMainPage extends State {
  int n = 0;
  List pages = [SecondPage(), DataPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            boxShadow: [BoxShadow(blurRadius: 40, spreadRadius: 0, color: Color.fromARGB(255, 188, 187, 187))],
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    n = 0;
                    setState(() {});
                  },
                  icon: Image.asset("assets/images/home.png")),
              IconButton(
                  onPressed: () {
                    n = 1;
                    setState(() {});
                  },
                  icon: Image.asset("assets/images/data.png")),
              IconButton(onPressed: () {}, icon: Image.asset("assets/images/chat.png")),
              IconButton(onPressed: () {}, icon: Image.asset("assets/images/person.png"))
            ],
          ),
        ),
        body: pages[n]);
  }
}

// ignore: use_key_in_widget_constructors
class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Monday",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff7F7F7F)),
            ),
            Text(
              "25 October",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff040415)),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.grey.shade500, width: 2)),
              child: Image.asset("assets/images/search.png"),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 56,
              width: 56,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/men.png"),
            ),
          ],
        ),
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(padding: const EdgeInsets.all(4.0), child: MainAppBar()),
                ),
                Flexible(
                  flex: 6,
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Hi Surf.",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "5 Tasks are predning",
                        style: TextStyle(fontSize: 14, color: Color(0xff8D8D8D), fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: const LinearGradient(colors: [Color(0xff8B78FF), Color(0xff5451D6)])),
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
                      ),
                    ],
                  ),
                ),
                Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Monthly Preview",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Expanded(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 7,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(colors: [Color(0xffA9FFEA), Color(0xff00B288)])),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "22",
                                            style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Done",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                                const SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(colors: [Color(0xffFFA0BC), Color(0xffFF1B5E)])),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "12",
                                            style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Ongoing",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(colors: [Color(0xffFFD29D), Color(0xffFF9E2D)])),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "7",
                                            style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "In Progress",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                                const SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                    flex: 7,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(colors: [Color(0xffB1EEFF), Color(0xff29BAE2)])),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "14",
                                            style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Waiting For Review",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            )),
                          ],
                        ))
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
