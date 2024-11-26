import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{
  int _counter = 0;
  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
  void _resetCounter(){
    setState((){
      _counter = 0;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterApp'),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '$_counter',
              style:const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Increment'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: _resetCounter,
                  child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}