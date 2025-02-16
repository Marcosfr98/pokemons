import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:pokemons/models/pokemon.dart';

class PokemonController extends ChangeNotifier {
  static PokemonController instance = PokemonController();
  Future<List<Pokemon>> getPokemons(int? limit) async {
    List<Pokemon> _pokemons = [];
    try {
      var index = 1;
      while (index <= (limit ?? 1)) {
        final _endpoint = Uri.parse("https://pokeapi.co/api/v2/pokemon/$index");
        http.Response response = await http.get(_endpoint);
        index++;
        _pokemons.add(Pokemon.fromJson(jsonDecode(response.body)));
      }
    } catch (e, stack) {
      print(e);
      print(stack);
    }

    return _pokemons;
  }
}
