import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(
                selectedDate: selectedDate,
                onPressed: onHeartPressed,
              ),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
  void onHeartPressed(){
    final DateTime now = DateTime.now();
      showCupertinoDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context){
            return Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                height: 300.0,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: selectedDate,
                  maximumDate: DateTime(
                    now.year,
                    now.month,
                    now.day,
                  ),
                  onDateTimeChanged: (DateTime date){
                    setState((){
                      selectedDate = date;
                    });
                  },
                ),
              ),
            );
          }
      );
  }
}



class _TopPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  _TopPart({
    required this.selectedDate,
    required this.onPressed,
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    
    
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Date', style: TextStyle(
              color: Colors.lightGreen,
              fontFamily: 'parisienne',
              fontSize: 80
          ),),
          Text(
            '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
            style: TextStyle(
              fontFamily: 'sunflower',
              fontSize: 30
          ),),
          IconButton(
              iconSize: 50,
              onPressed: onPressed,
              icon: Icon(
                Icons.favorite,
                color: Colors.pinkAccent,
              )),
          Text(
            'D+${
                DateTime(
                  now.year,
                  now.month,
                  now.day,
                ).difference(selectedDate).inDays + 1
            }',
            style: TextStyle(
              fontFamily: 'sunflower',
              fontWeight: FontWeight.w700,
              fontSize: 60,
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
    return Container(
      height: 340,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.star),
                ),
                ElevatedButton(
                    onPressed: (){}, 
                    child: Text('추가'))
              ],
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.star),
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('추가'))
            ],
          ),
        ],
      ),
    );
  }
}
