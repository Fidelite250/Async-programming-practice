main() async {
  print("Starting Async Block");

  try {
    Future<String> future_data = fectchData();
    future_data.then((value) {
      print(value);

      ///Do other things
    });
    print("Ending Synchronous Block");
  } catch (e) {
    
  }
}

Future<String> fectchData() {
  String data = "No Data";
  print("Fetching Data...");

  Duration duration = Duration(seconds: 3);

  return Future.delayed(duration, () {
    return "All Data Here";
  });
}