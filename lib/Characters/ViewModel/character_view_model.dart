import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'package:http/http.dart' as http;
import '../../api_config.dart';

class CharacterViewModel {
  List<Character> characters = [];

  getCharacters() {}
}

abstract class CharacterWorkerInterface {
  CharacterWorkerInterface(this.repository);
  CharacterRepositoryInterface repository;
  List<Character> fetchCharacters();
}

class CharacterWorker extends CharacterWorkerInterface {
  CharacterWorker(CharacterRepositoryInterface repository) : super(repository);

  @override
  List<Character> fetchCharacters() {
    return [];
  }
}

abstract class CharacterRepositoryInterface {
  Future<Character> fetchCharacters();
}

class CharacterRepository extends CharacterRepositoryInterface {
  @override
  Future<Character> fetchCharacters() async {
    final response = await http.get(Uri.parse('${APIConfig.apiURL}/character'));

    switch (response.statusCode) {
      case 200:
        print(response.body.toString());
        break;
      default:
        throw Exception('Failed to load album');
    }
    throw Exception('Failed to load characters');
  }
}
