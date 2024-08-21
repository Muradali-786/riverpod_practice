import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final stringRiver = Provider<String>((ref) {
  return "He How are you";
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final river=ref.read<String>(stringRiver);
    return Scaffold(
      appBar: AppBar(
        title: Text(river.toString()),
      ),
    );
  }
}
