import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'package:rickandmorty_app/Characters/Repository/character_repository.dart';
import 'package:rickandmorty_app/Characters/Worker/character_worker.dart';

class CharacterViewModel {
  CharacterViewModel(CharacterRepository repository) {
    worker = CharacterWorker(repository, this);
  }

  List<Character> characters = [];
  late CharacterWorkerInterface worker;

  getCharacters() {
    worker.fetchCharacters();
  }

  fetchedCharacters(List<Character> characters) {
    this.characters = characters;
  }
}
