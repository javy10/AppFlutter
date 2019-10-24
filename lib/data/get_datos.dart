import 'package:http/http.dart' as http;
import 'dart:convert';

class _MenuProvider {
  _MenuProvider() {

  }

  Future<Map> getList(String route) async {
    final resp = await http.get('http://192.168.1.3/DB/getData.php');
    Map dataMap = json.decode(resp.body);
    print(dataMap);
    return dataMap;
  }
}

final menuProvider = new _MenuProvider();

