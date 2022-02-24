class ProductModel {
  String name;
  String price;
  String description;
  String imageUrl;
  ProductModel({
    this.name = "",
    this.imageUrl = "",
    this.price = "",
    this.description = "",
  });
}

List<ProductModel> productModels = [
  ProductModel(
    name: "Car Od",
    price: "Price: 1200\$",
    description: "Covering the automotive industry since 1955.",
    imageUrl: "assets/images/car1.jpeg",
  ),
  ProductModel(
    name: "Apple 2021",
    imageUrl: "assets/images/mac1.png",
    price: "Price: 1200\$",
    description: "Covering the automotive industry since 1955.",
  ),
  ProductModel(
    name: "Car Roroy",
    price: "Price: 1200\$",
    description: "Covering the automotive industry since 1955.",
    imageUrl: "assets/images/car3.jpeg",
  ),
  ProductModel(
    name: "Car Rager",
    price: "Price: 1200\$",
    description: "Covering the automotive industry since 1955.",
    imageUrl: "assets/images/car4.jpeg",
  ),
  ProductModel(
    name: "Apple 2021",
    imageUrl: "assets/images/mac1.png",
    price: "Price: 1200\$",
    description: "Covering the automotive industry since 1955.",
  ),
  ProductModel(
    name: "Apple 2021",
    imageUrl: "assets/images/car2.webp",
    price: "Price: 1200\$",
    description: "Covering the automotive industry since 1955.",
  ),
];
