class Classes {
  final int id;
  final String title;
  final String description;
  final String image;
  final String background;

  Classes(this.id, this.title, this.description, this.image, this.background);

  Classes.fromJson(json)
      : id = json["id"],
        title = json["title"],
        description = json["description"],
        image = json["image"],
        background = json["backdrop_path"];
}
