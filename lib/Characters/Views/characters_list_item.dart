import 'package:flutter/material.dart';
import 'package:rickandmorty_app/extensions/extensions_colors.dart';

class CharacterListItem extends StatelessWidget {
  const CharacterListItem(
      {Key? key,
      required this.imageURL,
      required this.name,
      required this.stateAndRace,
      required this.lastLocation,
      required this.firstApparition})
      : super(key: key);

  final String imageURL;
  final String name;
  final String stateAndRace;
  final String lastLocationDescription = 'Last known location:';
  final String lastLocation;
  final String firstApparitionDescription = 'First seen in:';
  final String firstApparition;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(imageURL, width: 156, height: 156),
            ),
            Flexible(
                child: Container(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 8,
                      children: [
                        Text(name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        Text(stateAndRace,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14)),
                        const Text('Last known location:',
                            style: TextStyle(color: Colors.grey, fontSize: 13)),
                        Text(lastLocation,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14)),
                        const Text('First seen in:',
                            style: TextStyle(color: Colors.grey, fontSize: 13)),
                        Text(firstApparition,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14)),
                      ],
                    ),
                    margin: const EdgeInsets.fromLTRB(16, 8, 16, 8)))
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColors.cellColor),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8));
  }
}
