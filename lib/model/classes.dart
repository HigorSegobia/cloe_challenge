class Classes {
  final int id;
  final String title;
  final String description;
  final String image;

  Classes(this.id, this.title, this.description, this.image);

  Classes.fromJson(json)
      : id = json["id"],
        title = json["title"],
        description = json["description"],
        image = json["image"];
}
