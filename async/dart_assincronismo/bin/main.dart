import 'package:http/http.dart';
import 'dart:convert';

void main() {
  requestDataAsync();
}

requestData() {
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/6070ea5a79c14ad2b087910129a23a35/raw/7a4930a5b29d40516b782ae31283041f0cae5461/accounts.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  futureResponse.then((Response response) {
    print(response);
    print(response.body);
    List<dynamic> listaAccount = json.decode(response.body);
    Map<String, dynamic> mapCarla = listaAccount.firstWhere((element) => element["name"] == "Carla");
    print(mapCarla["balance"]);
  },);

  print("Ultima coisa a acontecer na função");
}

requestDataAsync() async {
  print("Teste");
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/6070ea5a79c14ad2b087910129a23a35/raw/7a4930a5b29d40516b782ae31283041f0cae5461/accounts.json";
  Response response = await get(Uri.parse(url));
  print(json.decode(response.body));
}