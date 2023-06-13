import 'package:http/http.dart' as http;

class APIService {
  final String bastURL = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse("$bastURL/$today");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
      return;
    }

    throw Error();
  }
}
