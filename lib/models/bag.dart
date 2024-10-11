class Bag {
  String name;
  String imagePath;
  Bag({
    required this.name,
    required this.imagePath,
  });
}

List<Bag> listOfBags() {
  return [
    Bag(name: "bag1", imagePath: "product-5.jpg"),
    Bag(name: "bag2", imagePath: "product-6.jpg"),
    Bag(name: "bag3", imagePath: "product-7.jpg"),
    Bag(name: "bag4", imagePath: "product-8.jpg"),
  ];
}
