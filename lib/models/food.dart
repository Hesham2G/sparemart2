

// ignore_for_file: unused_element



class Food {
  String name;
  String price;
  String imagePath;
  String rating;
  String Description;
  Food(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.rating,
      required this.Description,
      });
      String get _name => name;
      String get _price => price;
      String get _imagePath => imagePath;
      String get _rating => rating;
      String get _Description => Description;
}