Future<String> weatherStats() async{
  return Future.delayed(
    const Duration(seconds: 3),
    () => '30C',
  );
}
