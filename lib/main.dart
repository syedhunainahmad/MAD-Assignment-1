import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MaximumBid(initialBid:0.0),
    );
  }
}


class MaximumBid extends StatefulWidget {
  const MaximumBid({required this.initialBid});

  final double initialBid;

  @override
  State<MaximumBid> createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _counter = 0.0;

  void _incrementCounter() {
    setState(() {
      _counter+= 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Place your bid'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Your current maximum Bid:',
                style: TextStyle(fontSize: 30)
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Increase Bid by (RS 50)')),
          ],
        ),
      ),
    );
  }
}
