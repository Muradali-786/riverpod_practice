import 'dart:async';

Stream<int> fetchNumber() {
  return Stream<int>.periodic(
    const Duration(seconds: 2),
    (number) => number,
  ).take(100);
}
