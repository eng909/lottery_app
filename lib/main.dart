import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('lottery Winning Number is  4',style: TextStyle(fontSize: 18),)),
            SizedBox(height: 30,),
            Container(
              height:  250,
             width: 300,
             decoration: BoxDecoration(
             color: x == 4 ? Colors.red : Colors.cyan,
               borderRadius: BorderRadius.circular(10)
             ),
             child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: x == 4 ?
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.done_all,color: Colors.green,size: 35,),
                   SizedBox(height: 35,),
                   Text('Congrulation Bro u win Lottery,your number is $x\n ',textAlign:TextAlign.center,),
                 ],
               ) :

               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.error,color: Colors.red,size: 35,),
                   SizedBox(height: 35,),
                   Text('Better Luck Next Time Your Number is $x\n try again',textAlign:TextAlign.center,),
                 ],
               ),

             ), 
            ),
         ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
          backgroundColor: Colors.blue,

        ),
      ),
    );
  }
}


