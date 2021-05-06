import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String image;
  final double price;

  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.image,
      @required this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      name: 'Bag',
      image: 'assets/images/bag.jpg',
      price: 5,
      category: 'Business',
      description:
          'Cream-colored solid shoulder bag, has a zip closure1 main compartment, 1 external and 4 inner pockets\n Tablet sleeve: No \n Two Handles Size & Fit Height: 25 cm \nWidth: 34 cm \nDepth: 11 cm',
    ),
    Product(
      id: '2',
      name: 'T-shirt',
      image: 'assets/images/tshirt.png',
      price: 5,
      category: 'Clothes',
      description:
          "Keep this hip this season with the HRX Men's Athleisure T-shirt. This versatile T-shirt can be styled any way you like for the ultimate gym-to-street look.Features \nAthleisure T-shirt can be paired with tracks, khakis or jeans\n Style: Round Neck\nSleeve: Short Sleeves\nColour: Orange\nPrint: Typography\nFit: Regular",
    ),
    Product(
      id: '3',
      name: 'shoes',
      image: 'assets/images/shoes2.png',
      price: 4,
      category: 'Business',
      description:
          'A pair of black & white running sports shoes, has regular styling, lace-up detail\nTextile upper\n Cushioned footbed\n Textured and patterned outsole \nWarranty: 30 days\nWarranty provided by brand/manufacturer',
    ),
    Product(
      id: '4',
      name: 'Headphone',
      image: 'assets/images/wireless headset.png',
      price: 4,
      category: 'Gadgets',
      description:
          'Wireless: Yes \n Drivers: Dynamic, 53 mm with neodymium magnets \n Connectivity: USB Dongle \n Frequency response: 15–20,000 Hz \n Features: Detachable mic \n Weight : 300g \n Battery Life: 30 hours',
    ),
    Product(
      id: '5',
      name: 'Pants',
      image: 'assets/images/pants.jpg',
      price: 4,
      category: 'Clothes',
      description:
          'A revolution in sizing, fit and thinking. Slimming side seams & subtle boot cut flatter your shape. A reverse yoke lifts the seat.Vertical back pockets are proportioned to make the most of your assets and a contour waistband means these jeans won’t gap in the back. This jean is regular rise, rise front measures 9 7/8″. If this is too high for you, check out WU0371 for our short rise version of this style, where the rise front measures 9 1/2″. 99% cotton / 1% spandex in Mid Stone and Blue / Black Indigo finishes, 98% cotton / 2% spandex in Overdye Black finish. ',
    ),
    Product(
      id: '6',
      name: 'Acer Aspire',
      image: 'assets/images/acer.jpg',
      price: 4,
      category: 'Laptops',
      description:
          'Acer Aspire is a Windows 10 laptop with a 15.60-inch display that has a resolution of 1920x1080 pixels. It is powered by a Core i7 processor and it comes with 8GB of RAM. The Acer Aspire packs 1TB of HDD storage. Graphics are powered by Intel HD Graphics 620..',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
