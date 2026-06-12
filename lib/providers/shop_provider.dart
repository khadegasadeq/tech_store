import 'package:flutter/material.dart';
import '../models/product.dart';

class ShopProvider extends ChangeNotifier {
  // جميع المنتجات
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'iPhone 15',
      category: 'Phones',
      image:
          'https://images.unsplash.com/photo-1592750475338-74b7b21085ab',
      description: 'Latest Apple smartphone',
      price: 999,
    ),
    Product(
      id: '2',
      name: 'Samsung S25',
      category: 'Phones',
      image:
          'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf',
      description: 'Powerful Samsung phone',
      price: 899,
    ),
    Product(
      id: '3',
      name: 'MacBook Pro',
      category: 'Laptops',
      image:
          'https://images.unsplash.com/photo-1517336714739-489689fd1ca8',
      description: 'Apple laptop for professionals',
      price: 1999,
    ),
    Product(
      id: '4',
      name: 'Lenovo ThinkPad',
      category: 'Laptops',
      image:
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853',
      description: 'Reliable business laptop',
      price: 1299,
    ),
    Product(
      id: '5',
      name: 'Apple Watch',
      category: 'Watches',
      image:
          'https://images.unsplash.com/photo-1434493789847-2f02dc6ca35d',
      description: 'Smart watch from Apple',
      price: 399,
    ),
    Product(
      id: '6',
      name: 'Galaxy Watch',
      category: 'Watches',
      image:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
      description: 'Samsung smart watch',
      price: 349,
    ),
    Product(
      id: '7',
      name: 'AirPods Pro',
      category: 'Accessories',
      image:
          'https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46',
      description: 'Wireless Apple earbuds',
      price: 249,
    ),
    Product(
      id: '8',
      name: 'JBL Headphones',
      category: 'Accessories',
      image:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
      description: 'High quality headphones',
      price: 199,
    ),
  ];

  // السلة
  final List<Product> _cart = [];

  // المفضلة
  final List<Product> _favorites = [];

  // Getters
  List<Product> get products => _products;

  List<Product> get cart => _cart;

  List<Product> get favorites => _favorites;

  // إضافة للسلة
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // إزالة من السلة
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  // إضافة للمفضلة
  void addToFavorites(Product product) {
    if (!_favorites.contains(product)) {
      _favorites.add(product);
      notifyListeners();
    }
  }

  // إزالة من المفضلة
  void removeFromFavorites(Product product) {
    _favorites.remove(product);
    notifyListeners();
  }
}