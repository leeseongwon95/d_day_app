import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text('Start', style: TextStyle(
                color: Colors.lightGreen,
                fontFamily: 'pasisienne',
                fontSize: 80
              ),),
              Text('2022 08 08', style: TextStyle(
                fontFamily: 'sunflower',
                fontSize: 30
              ),),
              IconButton(
                  iconSize: 50,
                  onPressed: (){},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.pinkAccent,
              )),
              Text('D+1', style: TextStyle(
                fontFamily: 'sunflower',
                fontWeight: FontWeight.w700,
                fontSize: 60
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
