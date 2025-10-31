class Product {
  final String id;
  final String image;
  final String name;
  final String location;
  final int price;
  final String? condition;

  Product({
    required this.id,
    required this.image,
    required this.name,
    required this.location,
    required this.price,
    this.condition,
  });

  String get formattedPrice {
    return 'Rp ${price.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (m) => '${m[1]}.',
        )}';
  }
}
