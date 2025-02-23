```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle error here, but don't throw an exception.
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // This catch block will handle any exception during the request or data processing
    print('An error occurred: $e');
  }
}
```