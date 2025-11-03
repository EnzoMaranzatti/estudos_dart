import 'package:http/http.dart';

void main() {
  requestData();
}

requestData() {
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/6070ea5a79c14ad2b087910129a23a35/raw/7a4930a5b29d40516b782ae31283041f0cae5461/accounts.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  futureResponse.then((Response response) {
    print(response.body);
  },);
}