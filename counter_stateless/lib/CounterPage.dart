import 'package:counter_stateless/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        backgroundColor: Color.fromARGB(255, 71, 202, 0),
      ),
      body: Center(
        child: Text(
          'You pressed button for \n $count times',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: const Icon(Icons.plus_one),
        backgroundColor: Color.fromARGB(255, 71, 202, 0),
      ),
    );
  }
}
