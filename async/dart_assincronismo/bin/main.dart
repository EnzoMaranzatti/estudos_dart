import 'package:http/http.dart';
import 'dart:convert';

void main() {
  sendDataAsync({
    "id": "001",
    "name": "Flutter",
    "lastName": "Dart",
    "balance": 5000,
  });
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
// Todo retorno de uma função async tem que ser um Futere
Future<List<dynamic>> requestDataAsync() async {
  print("Teste");
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/6070ea5a79c14ad2b087910129a23a35/raw/7a4930a5b29d40516b782ae31283041f0cae5461/accounts.json";
  Response response = await get(Uri.parse(url));
  return json.decode(response.body);
}

sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listaAccounts = await requestDataAsync();
  listaAccounts.add(mapAccount);
  String content = json.encode(listaAccounts);
  
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/6070ea5a79c14ad2b087910129a23a35/raw/7a4930a5b29d40516b782ae31283041f0cae5461/accounts.json";
  Response response = await post(Uri.parse(url), body: content); 
}