class Wisata {
  final String name;
  final String location;
  final String description;
  final String category;
  final double latitude;
  final double longitude;
  final double rating;
  final List<String> imageAsset;
  bool isFavorite;

  Wisata({
    required this.name,
    required this.location,
    required this.description,
    required this.category,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.imageAsset,
    this.isFavorite = false,
  });
}
