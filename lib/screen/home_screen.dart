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
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, size: 30,color: Colors.red,);
  }
}
