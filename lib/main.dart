import 'package:flutter/material.dart';
import 'package:untitled6/home_screen.dart';
import 'package:untitled6/login%20_%20screen.dart';
import 'package:untitled6/messenger_screen.dart';
void main()
{
  runApp(MyApp());

}

// constructor
// build



class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: messengerScreen(),
    ) ;
  }




}





