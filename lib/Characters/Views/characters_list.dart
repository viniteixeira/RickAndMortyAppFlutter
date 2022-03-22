import 'package:flutter/material.dart';
import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'package:rickandmorty_app/extensions/extensions_colors.dart';
import './characters_list_item.dart';

class CharactersList extends StatefulWidget {
  const CharactersList(
      {Key? key, required this.title, required this.characters})
      : super(key: key);

  final String title;
  final List<Character> characters;

  @override
  State<CharactersList> createState() => _CharactersListState(characters);
}

class _CharactersListState extends State<CharactersList> {
  _CharactersListState(this.characters);

  List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: AppColors.primaryColor,
      body: Center(
          child: ListView(
        children: characters
            .map((char) => CharacterListItem(
                imageURL: char.image,
                name: char.name,
                stateAndRace: '${char.status} - ${char.species}',
                lastLocation: 'Citadel of Ricks',
                firstApparition: 'Earth (C-137)'))
            .toList(),
      )),
    );
  }
}
