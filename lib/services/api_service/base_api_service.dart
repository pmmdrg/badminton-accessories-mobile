import 'package:badminton_accessories_shop/configs/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class BaseApiService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  final Dio _dio = Dio(BaseOptions(baseUrl: AppConfig.baseApiUrl));
}
