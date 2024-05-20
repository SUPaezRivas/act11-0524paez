// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:paez0524/util/emoticon_face.dart';
import 'package:paez0524/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa2a2a2),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bienvenido',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '20/05/24',
                            style: TextStyle(color: Color(0xff000000)),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xa5707070),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff747474),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Que buscas',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Barberia',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '💆‍♂️',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Citas  ',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //otro
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '💈',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Barber products',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //otro
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '💇🏿‍♂️',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Cortes',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //otro
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '✂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Tijeras',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Reciente',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Lo mas gustado',
                              numberofExercises: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Citas',
                              numberofExercises: 8,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Top cortes',
                              numberofExercises: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
