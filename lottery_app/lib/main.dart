import 'package:flutter/material.dart';
import 'dart:math';

void  main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();
int x  = 8;
 
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Lottery App'),
          ),
             body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 const Center(child: Text('Your winning number is 6' )),

                const SizedBox(height: 23,), 

                Container(
                  height: 250,
                  decoration:  BoxDecoration(
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: x==5? const Text('Condition Match') :
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        const  Icon(Icons.error, color: Colors.red, size: 35,),
                        const SizedBox(height: 15,),
                        Text('Better try next time your number is $x\n try again', textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                )
               ],
               
             ),
 

          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = (random.nextInt(6));
              print(x);
              setState(() {
                
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ),
    );
  }
}