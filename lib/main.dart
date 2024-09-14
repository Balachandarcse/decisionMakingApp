import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const boss());
}

class boss extends StatefulWidget {
  const boss({super.key});

  @override
  State<boss> createState() => _bossState();
}

class _bossState extends State<boss> {
  int a=1;
  void change()
  {
    setState(() {
      a=Random().nextInt(5) +1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: Center(
              child: Text('Boss_level',
              style: TextStyle(
                color: Colors.black,
                  fontWeight: FontWeight.bold,
              ),
                        ),
            ),
          ),
        body: SafeArea(child:
        Center(
          child: Row(
            children:[
              Expanded(
                child: TextButton(
                onPressed: (){
                  change();
                },
                child: Image(
                  image: AssetImage('images/ball$a.png'),
                            ),
                            ),
              ),
          ],
          ),
        ),
        ),
      ),
    );
  }
}
