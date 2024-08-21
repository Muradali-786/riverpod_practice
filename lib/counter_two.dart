import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pord_practice/view_model/counter_provider.dart';

class CounterTwo extends ConsumerWidget {
  const CounterTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('object');
    int value = ref.watch(counterProvider2);
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter aoo'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            return Text(
              value.toString(),
              style: const TextStyle(fontSize: 28),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider2.notifier).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
