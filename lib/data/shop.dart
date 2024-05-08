import 'package:flutter/material.dart';
import 'package:shop_app/data/product.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    //product list
    Product(
      id: '01',
      title: "Polar T-shirt",
      img: 'assets/1.jpg',
      description:
          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      price: 35,
    ),
    Product(
      id: '02',
      title: "Hiking Boots",
      img: 'assets/2.jpg',
      description:
          "Waterproof hiking boots with Vibram soles for superior traction on any terrain.",
      price: 80,
    ),
    Product(
      id: '03',
      title: "Camping Tent",
      img: 'assets/3.jpg',
      description:
          "Spacious 4-person tent with double-layer design for weather protection.",
      price: 150,
    ),
    Product(
      id: '04',
      title: "Sleeping Bag",
      img: 'assets/4.jpg',
      description:
          "Lightweight sleeping bag suitable for camping and outdoor adventures.",
      price: 50,
    ),
    Product(
      id: '05',
      title: "Backpack",
      img: 'assets/5.jpg',
      description:
          "Durable backpack with multiple compartments and padded straps for comfort.",
      price: 60,
    ),
    Product(
      id: '06',
      title: "Outdoor Jacket",
      img: 'assets/6.jpg',
      description:
          "Waterproof and windproof jacket with adjustable hood and cuffs.",
      price: 90,
    ),
    Product(
      id: '07',
      title: "Camping Chair",
      img: 'assets/7.jpg',
      description:
          "Portable and lightweight camping chair with built-in cup holder.",
      price: 25,
    ),
    Product(
      id: '08',
      title: "Cooking Stove",
      img: 'assets/8.jpg',
      description:
          "Portable cooking stove with adjustable flame and windscreen.",
      price: 40,
    ),
    Product(
      id: '09',
      title: "Hydration Pack",
      img: 'assets/9.jpg',
      description:
          "Hydration backpack with built-in water reservoir and adjustable straps.",
      price: 30,
    ),
    Product(
      id: '10',
      title: "Trekking Poles",
      img: 'assets/10.jpg',
      description:
          "Lightweight and collapsible trekking poles with comfortable grips.",
      price: 20,
    ),
    Product(
      id: '11',
      title: "Portable Lantern",
      img: 'assets/11.jpg',
      description:
          "LED lantern with adjustable brightness settings and long battery life.",
      price: 15,
    ),
    Product(
      id: '12',
      title: "First Aid Kit",
      img: 'assets/12.jpg',
      description:
          "Compact first aid kit with essential supplies for outdoor emergencies.",
      price: 20,
    ),
    Product(
      id: '13',
      title: "Outdoor Hat",
      img: 'assets/13.jpg',
      description:
          "Wide-brimmed hat with UPF sun protection for outdoor activities.",
      price: 18,
    ),
    Product(
      id: '14',
      title: "Camping Hammock",
      img: 'assets/14.jpg',
      description:
          "Lightweight and portable camping hammock with tree-friendly straps.",
      price: 35,
    ),
    Product(
      id: '15',
      title: "Portable Water Filter",
      img: 'assets/15.jpg',
      description:
          "Compact water filter for purifying water from streams and lakes.",
      price: 45,
    ),
    Product(
      id: '16',
      title: "Outdoor Cooking Set",
      img: 'assets/16.jpg',
      description:
          "Complete cooking set with pots, pans, and utensils for outdoor meals.",
      price: 75,
    ),
    Product(
      id: '17',
      title: "Camping Mat",
      img: 'assets/17.jpg',
      description:
          "Lightweight and insulated camping mat for comfortable sleeping outdoors.",
      price: 55,
    ),
    Product(
      id: '18',
      title: "Multi-Tool",
      img: 'assets/18.jpg',
      description:
          "Versatile multi-tool with pliers, knives, screwdrivers, and more.",
      price: 25,
    ),
    Product(
      id: '19',
      title: "Inflatable Kayak",
      img: 'assets/19.jpg',
      description:
          "Compact and inflatable kayak for exploring lakes and rivers.",
      price: 180,
    ),
    Product(
      id: '20',
      title: "Portable Solar Charger",
      img: 'assets/20.jpg',
      description:
          "Solar-powered charger for charging phones and devices while camping.",
      price: 40,
    ),
  ];

  //user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to the cart
  void addProduct(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from the cart
  void removeProduct(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
