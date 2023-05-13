import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'motv_data_class.dart';

class MotivationApp extends StatelessWidget {
  const MotivationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Motivation",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView.builder(
            itemCount: motvilist.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  width: 350,
                  margin: EdgeInsets.all(10),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        motvilist[index].motvi,
                        style: TextStyle(
                            wordSpacing: 1.5,
                            fontSize: 12,
                            letterSpacing: 0.4,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Icon(
                            Icons.copy,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Icon(
                            FontAwesomeIcons.trophy,
                            color: Colors.blue,
                            size: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
