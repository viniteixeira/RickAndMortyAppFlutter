import 'package:flutter/material.dart';
import 'package:rickandmorty_app/Characters/Models/character.dart';
import 'extensions/extensions_colors.dart';
import 'Characters/Views/characters_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Character> charactersList = [];
    for (var i = 0; i < 10; i++) {
      charactersList.add(Character(
          0,
          'Rick Sanchez',
          'Alive',
          'Human',
          '',
          'Male',
          'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
          '',
          ''));
    }

    return MaterialApp(
      title: 'Rick and Morty App',
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.primaryColor)),
      home: CharactersList(title: 'Characters', characters: charactersList),
    );
  }
}
