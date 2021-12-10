import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/provider.dart';
import 'dart:io';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Center(
          child: Text(
            "Tic Tac Toe",
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        color: Colors.red[500],
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, (he * .05), 20.0, he * .05),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b1,
                        number: "1",
                      ),
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b2,
                        number: "2",
                      ),
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b3,
                        number: "3",
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b4,
                        number: "4",
                      ),
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b5,
                        number: "5",
                      ),
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b6,
                        number: "6",
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b7,
                        number: "7",
                      ),
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b8,
                        number: "8",
                      ),
                      NewWidget(
                        he: he,
                        xo: Provider.of<MyProvider>(context).b9,
                        number: "9",
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, he * .08, 20.0, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: he * .08,
                          width: 120.0,
                          child: Card(
                            elevation: 20.0,
                            child: TextButton(
                              onPressed: () {
                                Provider.of<MyProvider>(context, listen: false)
                                    .reset();
                              },
                              child: Text(
                                "Reset",
                                style: TextStyle(
                                    color: Colors.black, fontSize: he * .04),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        SizedBox(
                          height: he * .08,
                          width: 120.0,
                          child: Card(
                            elevation: 20.0,
                            child: TextButton(
                              onPressed: () {
                                exit(0);
                              },
                              child: Text(
                                "Exit",
                                style: TextStyle(
                                    color: Colors.black, fontSize: he * .04),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35.0,
                    ),
                    SizedBox(
                      height: he * .14,
                      child: Text(
                        Provider.of<MyProvider>(context).winner,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: he * .07,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  String xo;
  String number;
  NewWidget(
      {Key? key, required this.he, required this.xo, required this.number})
      : super(key: key);

  final double he;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: he * .14,
      width: 100.0,
      child: Card(
        elevation: 15.0,
        child: TextButton(
          onPressed: () {
            if (number == "1") {
              Provider.of<MyProvider>(context, listen: false).function1();
            }
            if (number == "2") {
              Provider.of<MyProvider>(context, listen: false).function2();
            }
            if (number == "3") {
              Provider.of<MyProvider>(context, listen: false).function3();
            }
            if (number == "4") {
              Provider.of<MyProvider>(context, listen: false).function4();
            }
            if (number == "5") {
              Provider.of<MyProvider>(context, listen: false).function5();
            }
            if (number == "6") {
              Provider.of<MyProvider>(context, listen: false).function6();
            }
            if (number == "7") {
              Provider.of<MyProvider>(context, listen: false).function7();
            }
            if (number == "8") {
              Provider.of<MyProvider>(context, listen: false).function8();
            }
            if (number == "9") {
              Provider.of<MyProvider>(context, listen: false).function9();
            }
          },
          child: Text(
            xo,
            style: const TextStyle(color: Colors.black, fontSize: 50.0),
          ),
        ),
      ),
    );
  }
}
