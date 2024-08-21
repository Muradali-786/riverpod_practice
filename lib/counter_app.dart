import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('object');
    int value = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter aoo'),
      ),
      body: Center(
        child: Consumer(

          builder: (context, ref, _) {
            int value = ref.watch(counterStateProvider);
            return Text(
              value.toString(),
              style: const TextStyle(fontSize: 28),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterStateProvider.notifier).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
