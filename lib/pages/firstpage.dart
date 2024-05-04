import 'package:flutter/material.dart';
import 'package:task_maneger/pages/secondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6C5CFF),
      body: Column(
        children: <Widget>[
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                child: Image.asset(
                  "assets/images/firstpage.png",
                  fit: BoxFit.cover,
                ),
              )),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 5,
                          width: 25,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(13), color: const Color(0xff8B78FF)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(color: Color.fromARGB(255, 222, 222, 237), shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(color: Color.fromARGB(255, 222, 222, 237), shape: BoxShape.circle),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          const Text(
                            "Building Better Workplaces ",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Create a unique emotional story that\ndescribes better than words",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color(0xff8D8D8D)),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StatfulPage()));
                            },
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: const LinearGradient(colors: [Color(0xff8B78FF), Color(0xff5451D6)]), boxShadow: const [BoxShadow(blurRadius: 10, spreadRadius: 0, color: Color.fromARGB(255, 172, 160, 250), offset: Offset(0, 5))]),
                                child: const Text("Get Started",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
