class AnimalCategory {
  String? _name;
  String? _imagePath;

  AnimalCategory({required String name, required String image}) {
    _name = name;
    _imagePath = image;
  }

  String get name => _name!;

  String get imagePath => _imagePath!;
}
