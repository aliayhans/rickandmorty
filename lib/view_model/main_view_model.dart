import 'dart:convert';
import 'package:rickandmorty/model/character.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainViewModel with ChangeNotifier {
  final String _apiUrl =
      "https://rickandmortyapi.com/api/character/";

  List<Character> _characters = [];

  List<Character> get characters => _characters;



  MainViewModel() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getCharacters();
    });
  }

  void _getCharacters() async {
    Uri uri = Uri.parse(_apiUrl);
    http.Response response = await http.get(uri);

   // List<dynamic> allCharacters = jsonDecode(response.body);

    List<dynamic> allCharacters = (jsonDecode(response.body)["results"]);


   for (Map<String, dynamic> characterMap in allCharacters) {
     Character character = Character.fromMap(characterMap);
     _characters.add(character);
    }

    notifyListeners();
  }
}



