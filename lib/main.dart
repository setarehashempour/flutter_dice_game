import 'package:flutter/material.dart'; //lazeme
import 'home_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // routes:{
      //
      // },    //masiri haiy ke mikhym behsh montghl bshim , mivinsim
    );
  }
}
