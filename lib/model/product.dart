class products {
  String name;
  double price;
  String image;
  String description;
  products(
      {required this.name,
      required this.image,
      required this.price,
      required this.description});
}

List<products> items = [
  products(
      name: 'supper star',
      image: "asset/10.jpg",
      price: 59.00,
      description:
          "Exquisitely handcrafted, this one-of-a-kind fancy item blends timeless elegance with artistic charm, making it the perfect statement piece for any occasion."),
  products(
      name: 'oldschool',
      image: "asset/13.jpg",
      price: 69.00,
      description:
          "Meticulously crafted to add beauty and sophistication to your world."),
  products(
      name: 'flage design',
      image: "asset/11.JPG",
      price: 45.00,
      description: "A one-of-a-kind creation made with care and passion."),
  products(
      name: "monaliza",
      image: "asset/14.jpg",
      price: 99.00,
      description: "A handcrafted treasure that speaks of elegance and style.")
];
