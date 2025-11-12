import 'package:http/http.dart';
import 'dart:convert';

// Função assíncrona usando then (versão antiga)
requestData() {
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/3407305891e1237bf2cd72fece5eb7f1/raw/0234e75ed4d7976df124cbe7268120d7ceaf192f/recipes.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  futureResponse.then((Response response) {
    print(response.body);
    List<dynamic> listaReceitas = json.decode(response.body);
  },);
}

requestDataAsync() async {
  String url = "https://gist.githubusercontent.com/EnzoMaranzatti/3407305891e1237bf2cd72fece5eb7f1/raw/0234e75ed4d7976df124cbe7268120d7ceaf192f/recipes.json";
  print("Iniciando a requisição...");
  Response response = await get(Uri.parse(url));
  print(response.body);
  List<dynamic> listaReceitas = json.decode(response.body);

  print("Finalizou a requisição");
}