import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding Page ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _currentBid = 50.0;


  void _increaseBid() {
    setState(() {
      _currentBid += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bidding Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Current Maximum Bid:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              '\$${_currentBid.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increaseBid,
              child: const Text('Increase Bid'),
            ),
          ],
        ),
      ),
    );
  }
}
