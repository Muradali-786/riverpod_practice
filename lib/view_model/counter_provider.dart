import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider2 =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  int increment() {
    return state++;
  }
}
