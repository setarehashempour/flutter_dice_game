import 'package:flutter/material.dart';
import 'dart:math';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rightDice = 1;

  void randomDicee(){
    leftDice = Random().nextInt(6)+1;
    rightDice = Random().nextInt(6)+1;
  }
  
    @override
    Widget build(BuildContext context) {

      // var number_of_dice = 3;
      return Scaffold(
          appBar: AppBar(
            title: Text("Dicee"),
            titleTextStyle: TextStyle(color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
            backgroundColor: Colors.purple[400],
            titleSpacing: 200.0,
          ),
          backgroundColor: Colors.purple[100],

          body:

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child:
                        ListTile(
                          leading:
                          Icon(
                            Icons.person,
                            color: Colors.purple[700],
                            size: 25.0,
                          ),
                          title:
                          Text(
                            "User1",
                            style: TextStyle(
                              color: Colors.purple[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          )
                          ,
                        ),
                      ),
                    ),)
                  ,
                  Expanded(
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child:
                        ListTile(
                          leading:
                          Icon(
                            Icons.person,
                            color: Colors.purple[700],
                            size: 25.0,
                          ),
                          title:
                          Text(
                            "User 2",
                            style: TextStyle(
                              color: Colors.purple[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          )
                          ,
                        ),
                      ),
                    ),)
                  ,
                ],
              ),
              Row(
                children: [

                  Expanded(child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          randomDicee();
                      });

                      },
                      child: Image.asset("images/dice$leftDice.png" , color: Colors.purple[600],  //"images/dice$umber_of_dice.png"
                      ),
                    ),
                  ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:TextButton(
                      onPressed: (){
                        setState(() {
                          randomDicee();
                        });
                      },
                      child: Image.asset("images/dice$rightDice.png" , color: Colors.purple[600],
                      ),
                    ),
                  ))
                ],
              ),
            ],
          ),
      );

    }}

