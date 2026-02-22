void main() async {
  print("Starting Async Block");

  try {
    String futureData = await fetchData();
    print(futureData);
  } catch (e) {
    print("Error occurred: $e");
  }

  print("Ending Synchronous Block");
}

Future<String> fetchData() {
  print("Fetching Data...");

  return Future.delayed(
    Duration(seconds: 3),
    () => "All Data Here",
  );
}
// ------------------------------------------------------------------
