import 'package:flutter/material.dart';
import 'package:task_maneger/pages/firstpage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainBody(),
    
  ));
}

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}
