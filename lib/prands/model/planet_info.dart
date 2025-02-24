class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

List<PlanetInfo> planetInfo = [
  PlanetInfo(1,
      name: 'Toyota',
      iconImage: 'lib/images/icons8-toyota-200.png',
      description:
          "Toyota is one of the largest and most reliable car manufacturers in the world, known for producing a wide range of vehicles, from fuel-efficient sedans to hybrid and electric cars. The brand emphasizes quality, durability, and innovation.",
      images: [
        'https://www.pngplay.com/wp-content/uploads/15/Camry-Toyota-PNG-Clipart-Background.webp',
        'https://purepng.com/public/uploads/large/purepng.com-toyota-land-cruiser-white-carcarvehicletransporttoyota-961524668359oxuc6.png',
        'https://purepng.com/public/uploads/large/sedan-2009-toyota-corolla-trj.png',
      ]),
  PlanetInfo(2,
      name: 'BMW',
      iconImage: 'lib/images/icons8-bmw-240.png',
      description:
          "BMW is a luxury automobile manufacturer that specializes in producing high-performance cars and motorcycles. It is renowned for its sleek designs, advanced technology, and driving experience.",
      images: [
        'https://www.pngplay.com/wp-content/uploads/13/BMW-3-Series-2019-PNG-Clipart-Background.png',
        'https://www.pngplay.com/wp-content/uploads/13/BMW-X5-Transparent-Free-PNG.png',
        'https://www.pngplay.com/wp-content/uploads/13/2018-BMW-I8-Coupe-Transparent-Background.png',
      ]),
  PlanetInfo(3,
      name: 'Ford',
      iconImage: 'lib/images/icons8-ford-240.png',
      description:
          " Ford is a historic American automobile manufacturer known for revolutionizing the car industry with mass production. It offers a diverse range of vehicles, including trucks, SUVs, and electric models.",
      images: [
        'https://www.pngplay.com/wp-content/uploads/12/Ford-Mustang-Background-PNG-Image.png',
        'https://www.pngplay.com/wp-content/uploads/12/Ford-Mustang-Background-PNG-Clip-Art-Image.png',
        
      ]),
  PlanetInfo(4,
      name: 'Mercedes-Benz',
      iconImage: 'lib/images/icons8-mercedes-benz-240 (1).png',
      description:
          " Mercedes-Benz is a global leader in luxury vehicles, offering cutting-edge technology, premium comfort, and high-end performance. It is famous for its elegant designs and innovation in automotive engineering. ",
      images: [
        'https://www.pngplay.com/wp-content/uploads/13/Mercedes-Benz-G-Class-PNG-Free-File-Download.png',
        'https://www.pngplay.com/wp-content/uploads/13/Mercedes-Benz-PNG-Images-HD.png',
        'https://www.pngplay.com/wp-content/uploads/13/Mercedes-Benz-CLA-Shooting-Brake-Transparent-File.png',
      ]),
  PlanetInfo(5,
      name: 'Porsche',
      iconImage: 'lib/images/icons8-porsche-240.png',
      description:
          " Porsche is a premium car brand specializing in high-performance sports cars, SUVs, and sedans. It combines luxury, innovation, and exceptional engineering.",
      images: [
        'https://www.pngplay.com/wp-content/uploads/13/Porsche-GT2-RS-PNG-Images-HD.png',
        'https://www.pngplay.com/wp-content/uploads/13/Porsche-911-Cabriolet-PNG-HD-Quality.png',
        'https://www.pngplay.com/wp-content/uploads/15/Black-Porsche-No-Background.png',
      ]),
  PlanetInfo(6,
      name: 'Ferrari',
      iconImage: 'lib/images/icons8-ferrari-240.png',
      description:
          "Ferrari is a luxury sports car manufacturer famous for its high-performance vehicles and iconic designs. It is a symbol of speed, prestige, and exclusivity.",
      images: [
        'https://www.pngplay.com/wp-content/uploads/13/Ferrari-F50-Free-PNG.png',
        'https://www.pngplay.com/wp-content/uploads/13/Ferrari-488-Spider-Transparent-Free-PNG.png',
      
      ]),
  PlanetInfo(7,
      name: 'Lamborghini',
      iconImage: 'lib/images/icons8-lamborghini-240.png',
      description:
          "Lamborghini is a world-renowned luxury sports car manufacturer known for its high-performance supercars, iconic design, and cutting-edge technology. The brand is synonymous with power, speed, and exclusivity, often featuring bold, aggressive styling and innovative engineering. ",
      images: [
        'https://www.pngplay.com/wp-content/uploads/13/Lamborghini-Urus-PNG-Images-HD.png',
        'https://www.pngplay.com/wp-content/uploads/15/Aventador-Lamborghini-PNG-Background.png',
        'https://www.pngplay.com/wp-content/uploads/12/Lamborghini-PNG-HD-Free-File-Download.png',
      ]),
  PlanetInfo(8,
      name: 'Land Rover',
      iconImage: 'lib/images/icons8-land-rover-240.png',
      description:
          "Land Rover is a British luxury automobile brand specializing in premium SUVs designed for both off-road capability and refined on-road comfort. Known for its rugged durability, advanced technology, and elegant design, Land Rover vehicles are a symbol of adventure and sophistication.",
      images: [
        'https://www.pngplay.com/wp-content/uploads/13/Land-Rover-Defender-Transparent-Images.png',
        'https://www.pngplay.com/wp-content/uploads/13/Land-Rover-Free-Picture-PNG.png',
        'https://www.pngplay.com/wp-content/uploads/13/Land-Rover-Defender-PNG-HD-Quality.png',
      ]),
];
