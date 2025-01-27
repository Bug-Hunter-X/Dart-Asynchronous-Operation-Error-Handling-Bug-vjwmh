```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('Success!');
    } else {
      // Handle error here.  This is where the bug is.
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // This catch block only catches the exception thrown inside the try block.
    // Network errors, for example, may not be caught here.
    // ignore: avoid_print
    print('Error: $e');
  }
}
```