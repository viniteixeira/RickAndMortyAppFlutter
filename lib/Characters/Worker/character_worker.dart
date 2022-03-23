import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'package:rickandmorty_app/Characters/Repository/character_repository.dart';
import 'package:rickandmorty_app/Characters/ViewModel/character_view_model.dart';

abstract class CharacterWorkerInterface {
  CharacterWorkerInterface(this.repository, this.viewModel);
  CharacterRepositoryInterface repository;
  CharacterViewModel viewModel;
  fetchCharacters();
  fetchedCharacters(List<Character> characters);
}

class CharacterWorker extends CharacterWorkerInterface {
  CharacterWorker(
      CharacterRepositoryInterface repository, CharacterViewModel viewModel)
      : super(repository, viewModel) {
    repository.worker = this;
  }

  @override
  fetchCharacters() {
    repository.fetchCharacters();
  }

  @override
  fetchedCharacters(List<Character> characters) {
    viewModel.fetchedCharacters(characters);
  }
}
