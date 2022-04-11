import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/Users.dart';

Future<List<User>> getUsers() async {
  var url = Uri.parse('https://randomuser.me/api/?results=40');
  late http.Response response;
  List<User> users = [];

  try {
    response = await http.get(url);
    if (response.statusCode == 200) {
      Map peopleData = jsonDecode(response.body);
      List<dynamic> peoples = peopleData["results"];

      for (var item in peoples) {
        var email = item['email'];
        var name = item['name']['first'] + " " + item['name']['last'];
        var id = item['login']['uuid'];
        var avatar = item['picture']['large'];
        User user = User(id, name, email, avatar);
        users.add(user);
      }
    } else {
      return Future.error("Something gone wrong, ${response.statusCode}");
    }
  } catch (e) {
    return Future.error(e.toString());
  }
  return users;
}
