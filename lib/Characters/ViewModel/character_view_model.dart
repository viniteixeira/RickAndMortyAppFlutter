import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'package:http/http.dart' as http;

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
    final response = repository.fetchCharacters();
    return [];
  }
}

abstract class CharacterRepositoryInterface {
  Future<http.Response> fetchCharacters();
}

class CharacterRepository extends CharacterRepositoryInterface {
  @override
  Future<http.Response> fetchCharacters() async {
    const baseURL = 'https://rickandmortyapi.com/api';
    final response = await http.get(Uri.parse('${baseURL}/character'));
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

// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }