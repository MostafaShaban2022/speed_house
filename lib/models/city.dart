class City{
  late int id ;
  late String name;
  late String imageUrl;
  bool isPopular;

  City ({
    required this.id,
    required this.imageUrl,
    required this.name,
    this.isPopular = false
  });
}