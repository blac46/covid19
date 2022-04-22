import 'dart:convert';

import 'package:covid_19_app/models/levlemodels.dart';
import 'package:http/http.dart' as http;

class Network {
  String url = "https://coronavirus-19-api.herokuapp.com/countries";

  Future<NewsContent> getapi() async {
    final response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode ==200){
      print(response.body);

    }
    else{
      print('cant get $url');
    }
    var data = jsonDecode(response.body);
    return NewsContent.fromjson(data);


  }


}