import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pord_practice/repsitory/number_streams.dart';


final numberProvider = StreamProvider<int>((ref) => fetchNumber());

class NumberStream extends ConsumerWidget {
  const NumberStream({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('khan');
    return Scaffold(
      appBar: AppBar(
        title: const Text('number of stream'),
      ),
      body: ref.watch(numberProvider).when(
            data: (data) => Center(
              child: Text(data.toString(),style: TextStyle(fontSize: 48),),
            ),
            error: (stackTrace, error) => const Center(
              child: Text('error'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
