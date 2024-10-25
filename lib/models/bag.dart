class Bag {
  String name;
  String imagePath;
  bool isFavorite;
  Bag({
    required this.name,
    required this.imagePath,
    this.isFavorite = false,
  });
}

List<Bag> listOfBags() {
  return [
    Bag(name: "producto", imagePath: "product-5.jpg"),
    Bag(name: "producto", imagePath: "product-6.jpg"),
    Bag(name: "producto", imagePath: "product-7.jpg"),
    Bag(name: "producto", imagePath: "product-8.jpg"),
  ];
}
