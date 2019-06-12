import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class NewsApi {
  String url =
      "https://raw.githubusercontent.com/Kleysonb/news_medium/master/api/news.json";
  Future<List> loadNews() async {
    try {
      http.Response response = await http.get(url);
      const JsonDecoder decoder = const JsonDecoder();
      return decoder.convert(response.body);
    } on Exception catch (_) {
      return null;
    }
  }
}
