class Coffee{
  final String id;
  final String title;
  final String price;
  final String imageUrl1;
  final String imageUrl2;

  Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl1,
    required this.imageUrl2,
  });
}

List<Coffee> coffees = [
  Coffee(id: "01",
      title: "(1호점) 신촌커피",
      price: "6100",
      imageUrl1: "assets/images/coffee01.jpg",
      imageUrl2: "assets/images/coffee01_ice.jpg",
  ),
  Coffee(id: "02",
    title: "아메리카노",
    price: "4500",
    imageUrl1: "assets/images/coffee02.jpg",
    imageUrl2: "assets/images/coffee02_ice.jpg",
  ),
  Coffee(id: "03",
    title: "카페라떼",
    price: "5000",
    imageUrl1: "assets/images/coffee03.jpg",
    imageUrl2: "assets/images/coffee03_ice.jpg",
  ),
  Coffee(id: "04",
    title: "바닐라카페라떼",
    price: "5500",
    imageUrl1: "assets/images/coffee04.jpg",
    imageUrl2: "assets/images/coffee04_ice.jpg",
  ),
];

