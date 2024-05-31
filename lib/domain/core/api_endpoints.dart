import 'package:news_app/core/api_key.dart';
import 'package:news_app/core/strings.dart';

class ApiEndPoints{
  static const everything = '$kBaseUrl/everything?domains=$kDomains&apiKey=$apiKey';
  static const categoryVise = '$kBaseUrl/top-headlines';
  static const search = '$kBaseUrl/everything?q=';
}