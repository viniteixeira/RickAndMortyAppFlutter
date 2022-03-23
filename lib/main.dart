import 'package:flutter/material.dart';
import 'extensions/extensions_colors.dart';
import 'Characters/Views/characters_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty App',
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.primaryColor)),
      home: const CharactersList(title: 'Characters'),
    );
  }
}
