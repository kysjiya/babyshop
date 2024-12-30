class CategoryModel {
  final String title;
  final String? image, svgSrc;

  CategoryModel({
    required this.title,
    this.image,
    this.svgSrc,
  });
}

final List<CategoryModel> demoCategoriesWithImage = [
  CategoryModel(title: "Clothes", image: "https://i.imgur.com/5M89G2P.png"),
  CategoryModel(title: "Toys", image: "https://i.imgur.com/UM3GdWg.png"),
  CategoryModel(title: "Accessories", image: "https://i.imgur.com/Lp0D6k5.png"),
  CategoryModel(title: "All Products", image: "https://i.imgur.com/3mSE5sN.png"),
];

final List<CategoryModel> demoCategories = [
  CategoryModel(
    title: "All Products",
    svgSrc: "",
  ),
  CategoryModel(
    title: "Clothes",
    svgSrc: "assets/icons/body-baby-clothes.svg",
  ),
  CategoryModel(
    title: "Toys",
    svgSrc: "assets/icons/cubes-toy.svg",
  ),
  CategoryModel(
    title: "Accessories",
    svgSrc: "assets/icons/Child.svg",
  ),
];
