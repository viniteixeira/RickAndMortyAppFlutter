import 'package:flutter/material.dart';
import 'package:rickandmorty_app/Characters/Repository/character_repository.dart';
import 'package:rickandmorty_app/Characters/ViewModel/character_view_model.dart';
import 'package:rickandmorty_app/extensions/extensions_colors.dart';
import './characters_list_item.dart';

class CharactersList extends StatefulWidget {
  const CharactersList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  CharacterViewModel viewModel = CharacterViewModel(CharacterRepository());

  @override
  void initState() {
    super.initState();
    viewModel.getCharacters();

    setState(() {
      viewModel.characters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: AppColors.primaryColor,
      body: Center(
          child: ListView(
        children: viewModel.characters
            .map((char) => CharacterListItem(
                imageURL: char.image,
                name: char.name,
                stateAndRace: '${char.status} - ${char.species}',
                lastLocation: char.location.name,
                firstApparition: char.origin.name))
            .toList(),
      )),
    );
  }
}
