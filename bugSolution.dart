```dart
Future<Map<String, dynamic>> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Re-throw the exception to be handled by the caller.
    rethrow;
  }
}

void main() async {
  try {
    final data = await fetchData();
    print('Data fetched successfully: $data');
  } catch (e) {
    print('An error occurred: $e');
    // Handle the error appropriately (e.g., display an error message to the user, retry the request, etc.)
  }
}
```