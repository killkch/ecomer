class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: "전체",
    image: "assets/all.png",
  ),
  Category(
    title: "신발",
    image: "assets/shoes.png",
  ),
  Category(
    title: "미용",
    image: "assets/beauty.png",
  ),
  Category(
    title: "여성복",
    image: "assets/image1.png",
  ),
  Category(
    title: "보석",
    image: "assets/jewelry.png",
  ),
  Category(
    title: "남성복",
    image: "assets/men.png",
  ),
];
