import 'package:http/http.dart' as http;

abstract class HttpServices {
  Future<http.Response> get<T>(String path);
}
