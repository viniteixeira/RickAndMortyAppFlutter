import 'dart:convert';
import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'package:http/http.dart' as http;
import 'package:rickandmorty_app/Characters/Repository/DataTransfer/data_transfer_character.dart';
import 'package:rickandmorty_app/Characters/Worker/character_worker.dart';
import '../../api_config.dart';

abstract class CharacterRepositoryInterface {
  late CharacterWorker worker;
  fetchCharacters();
}

class CharacterRepository extends CharacterRepositoryInterface {
  @override
  fetchCharacters() {
    final fetch = _fetchCharacters();
    fetch.whenComplete(() {
      fetch.then((characters) {
        worker.fetchedCharacters(characters);
      });
    });
  }

  Future<List<Character>> _fetchCharacters() async {
    final response = await http.get(Uri.parse('${APIConfig.apiURL}/character'));

    switch (response.statusCode) {
      case 200:
        final result = DataTransferReceiveCharacterResult.fromJson(
            jsonDecode(response.body));
        final characters = result.results
            // .map((charResult) => Character(
            //     charResult.id ?? 0,
            //     charResult.name ?? '',
            //     charResult.status ?? '',
            //     charResult.species ?? '',
            //     charResult.type ?? '',
            //     charResult.gender ?? '',
            //     charResult.image ?? '',
            //     charResult.url ?? '',
            //     charResult.created ?? ''))
            // .toList();
            .map((charResult) => Character(
                charResult.id ?? 0,
                charResult.name ?? '',
                charResult.status ?? '',
                charResult.species ?? '',
                charResult.type ?? '',
                charResult.gender ?? '',
                charResult.image ?? '',
                charResult.url ?? '',
                charResult.created ?? '',
                CharacterInfo('', ''),
                CharacterInfo('', '')))
            .toList();
        return characters;
      default:
        throw Exception('Failed to load Characters');
    }
  }
}
