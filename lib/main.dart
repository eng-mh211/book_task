
import 'package:app1/home_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(My_App());
}
class My_App extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}