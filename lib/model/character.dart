class Character {
  int id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  String image;

  Character.fromMap(Map<String, dynamic> map)
      : id = map["id"] ?? 0,
        name = map["name"] ?? "",
        status = map["status"] ?? "",
        species = map["species"] ?? "",
        type = map["type"] ?? "",
        gender = map["gender"] ?? "",
        image = map["image"] ?? "";

  //Character.fromMap(Map<String, dynamic> map)
  //        :
  //              id = map["results"]?["id"] ?? 0,
  //              name = map["results"]?["name"] ?? "",
  //              status = map["results"]?["status"] ?? "",
  //              species = map["results"]?["species"] ?? "",
  //              type = map["results"]?["type"] ?? "",
  //              gender = map["results"]?["gender"] ?? "",
  //              image = map["results"]?["image"] ?? "";
}
