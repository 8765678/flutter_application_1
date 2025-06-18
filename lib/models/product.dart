class Product {
  final String id;
  final String name;
  final int price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

const List<Product> fruits = [
  Product(
    id: '1',
    name: 'リンゴ',
    price: 100,
    imageUrl: 'assets/images/Apple.jpg',
  ),
  Product(
    id: '2',
    name: 'バナナ',
    price: 150,
    imageUrl: 'assets/images/banana.jpg',
  ),
  Product(
    id: '3',
    name: 'メロン',
    price: 500,
    imageUrl: 'assets/images/meron.jpg',
  ),
  Product(
    id: '4',
    name: 'ぶどう',
    price: 300,
    imageUrl: 'assets/images/grape.jpg',
  ),
  Product(
    id: '5',
    name: 'もも',
    price: 350,
    imageUrl: 'assets/images/peach.jpg',
  ),
  Product(
    id: '6',
    name: 'みかん',
    price: 200,
    imageUrl: 'assets/images/mikan.jpg',
  ),
];

const List<Product> vegetables = [
  Product(
      id: '7', name: 'にんじん', price: 120, imageUrl: 'assets/images/carrot.jpg'),
  Product(
      id: '8', name: 'キャベツ', price: 180, imageUrl: 'assets/images/cabbage.jpg'),
];
