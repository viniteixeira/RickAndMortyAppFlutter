class Character {
  Character(
      this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.image,
      this.url,
      this.created,
      this.location,
      this.origin);

  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final String created;
  final CharacterInfo location;
  final CharacterInfo origin;
}

class CharacterInfo {
  CharacterInfo(this.name, this.url);

  final String name;
  final String url;
}
