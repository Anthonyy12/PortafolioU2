

import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget{
  const CounterFunctionScreen({super.key});
  
  @override
  State<CounterFunctionScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  void _incrementCounter(){
    setState(() {
      clickCounter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Fuctions'),
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: (){
            setState(() {
              clickCounter = 0;
            });
          },),]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            const Text(
              'Cantidad de Clics',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [    
          CustomButton(icon: Icons.refresh_outlined,
          onPressed: (){
            clickCounter = 0;
            setState(() {
              
            });
          },),
          const SizedBox(height: 10,),
          CustomButton(icon: Icons.plus_one,
          onPressed: () {
            clickCounter++;
            setState(() {
              
            });
          },),
          const SizedBox(height: 10,),
          CustomButton(icon: Icons.exposure_minus_1_outlined,
          onPressed: (){
            clickCounter--;
            setState(() {
              
            });
          },
          ),
        ],
    )
    );
  }
}
  
class CustomButton extends StatelessWidget{
  
  final IconData icon; 
  final VoidCallback? onPressed;

  const CustomButton(/*this.icon, */{
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon)
    );
  }
  }


void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green
      ),
      home: const CounterFunctionScreen()
    ),
  );
}