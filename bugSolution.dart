```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('Success!');
    } else {
      // Handle different HTTP error codes appropriately.
      throw Exception('HTTP Error: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // ignore: avoid_print
    print('SocketException: $e'); // Handle network errors
  } on TimeoutException catch (e) {
    // ignore: avoid_print
    print('TimeoutException: $e'); // Handle timeouts
  } on FormatException catch (e) {
    // ignore: avoid_print
    print('FormatException: $e'); //Handle format errors
  } catch (e) {
    // ignore: avoid_print
    print('Generic Error: $e'); // Handle other unexpected errors
  }
}
```