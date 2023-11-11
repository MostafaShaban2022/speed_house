class Space {
  late int id;
  late String name;
  late String imageUrl;
  late int price;
  late String city;
  late String country;
  late int rating;
  late String address;
  late String phone;
  late String mapUrl;
  final List<dynamic> photos;
  late int numberOfKitchens;
  late int numberOfBedrooms;
  late int numberOfCupboards;

  Space({
    required this.city,
    required this.country,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.photos,
    this.numberOfKitchens = 0,
    this.numberOfBedrooms = 0,
    this.numberOfCupboards = 0,
    this.mapUrl = '',
    this.phone = '',
    this.address = '',
  });

  factory Space.fromJson(Map<String, dynamic> json) {
    return Space(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      city: json['city'] ?? '',
      country: json['country'] ?? '',
      photos: json['photos'],
      price: json['price'] ?? 0,
      rating: json['rating'] ?? 0,
      address: json['address'] ?? '',
      phone: json['phone'] ?? '',
      mapUrl: json['mapUrl'] ?? '',
      numberOfBedrooms: json['numberOfBedrooms'] ?? 0,
      numberOfCupboards: json['numberOfCupboards'] ?? 0,
      numberOfKitchens: json['numberOfKitchens'] ?? 0,
      imageUrl: json['image_url'] ?? '',
    );
  }
}
