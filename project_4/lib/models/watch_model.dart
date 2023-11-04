class Watch {
  final String name, description, image;
  final double price;
  int? count;
  num itemsTotal = 0;

  Watch(
      {required this.name,
      required this.price,
      required this.description,
      required this.image,
      this.count});

  factory Watch.fromJson(Map json) {
    return Watch(
      description: json["description"],
      price: json["price"],
      name: json["name"],
      count: json['count'],
      image: json["image"],
    );
  }
}
