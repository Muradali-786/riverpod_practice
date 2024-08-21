import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pord_practice/repsitory/weather_api.dart';

final weatherProvider = FutureProvider.autoDispose<String>(
  (ref) => weatherStats(),
);

class Weather extends ConsumerWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: ref.watch(weatherProvider).when(
            data: (data) => Center(
              child: Text(data.toString(),style: const TextStyle(fontSize: 48),),
            ),
            error: (stackTrace, error) => const Center(
              child: Text('something went wrong'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
