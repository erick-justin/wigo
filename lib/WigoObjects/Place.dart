

class Place {


  String _category;
  String _name;
  String _generalLocation;
  String _priceRange;
  double _ratings;
  List<String> _images;


  Place(this._category, this._name, this._generalLocation, this._priceRange,
      this._ratings, this._images);

  double get ratings => _ratings;

  String get priceRange => _priceRange;

  String get generalLocation => _generalLocation;

  String get name => _name;

  String get category => _category;

  List<String> get images => _images;


}