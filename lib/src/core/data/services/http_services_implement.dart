import 'package:http/http.dart' as http;

import '../../../app/constants/api/constants_parames.dart';
import '../../domain/services/http_services.dart';

class HttpServicesImplement implements HttpServices {
  @override
  Future<http.Response> get<T>(String path) {
    return http.get(
      Uri.parse("$base_url/$path"),
    );
  }
}
