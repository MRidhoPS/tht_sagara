import 'package:flutter/material.dart';
import 'package:tht_sagara/model/data_model.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: 'p001',
      image: 'https://cdn.pixabay.com/photo/2021/12/21/06/11/iphone-6884672_1280.jpg',
      name: 'iPhone 13 Pro Max 256GB',
      location: 'Jakarta Selatan',
      price: 12500000,
      condition: 'Bekas',
    ),
    Product(
      id: 'p002',
      image: 'https://cdn.pixabay.com/photo/2017/08/29/13/44/car-2693389_1280.jpg',
      name: 'Harley Davidson',
      location: 'Bandung, Jawa Barat',
      price: 4200000,
      condition: 'Baru',
    ),
    Product(
      id: 'p003',
      image: 'https://tse2.mm.bing.net/th/id/OIP.QJYIxFXDqJt-p4tQYsrWfQHaEK?pid=Api&P=0&h=180',
      name: 'MacBook Air M1 2020',
      location: 'Surabaya, Jawa Timur',
      price: 9800000,
      condition: 'Bekas',
    ),
    Product(
      id: 'p004',
      image: 'https://tse4.mm.bing.net/th/id/OIP.g7_DxlyN57fXlR5Bls-PCgHaD7?pid=Api&P=0&h=180',
      name: 'Sofa 2-Seater Minimalis',
      location: 'Yogyakarta',
      price: 1750000,
      condition: "Baru", 
    ),
    Product(
      id: 'p005',
      image: 'https://tse1.mm.bing.net/th/id/OIP.KTj3rJMH8KI__5KIAHDQKAHaE8?pid=Api&P=0&h=180',
      name: 'TV LED 43" Samsung',
      location: 'Medan, Sumut',
      price: 3200000,
      condition: 'Bekas',
    ),
    Product(
      id: 'p006',
      image: 'https://tse3.mm.bing.net/th/id/OIP.viwkHov0zzfcV89FsCowqgHaHa?pid=Api&P=0&h=180',
      name: 'Gitar Akustik Yamaha F310',
      location: 'Semarang, Jateng',
      price: 900000,
      condition: 'Baru',
    ),
    Product(
      id: 'p007',
      image: 'https://tse1.mm.bing.net/th/id/OIP.etCF0L8Efh8TofThmOdchQHaGN?pid=Api&P=0&h=180',
      name: 'Meja Kerja Minimalis',
      location: 'Bali',
      price: 650000,
      condition: 'Baru',
    ),
    Product(
      id: 'p008',
      image: 'https://tse3.mm.bing.net/th/id/OIP.gTmNULqeMh-liiRRkwn7DQHaI5?pid=Api&P=0&h=180',
      name: 'PS5 Disk Edition',
      location: 'Jakarta Pusat',
      price: 9800000,
      condition: 'Baru',
    ),
    Product(
      id: 'p009',
      image: 'https://tse3.mm.bing.net/th/id/OIP.IRJahQCtOJLvVSpA6oMPuAHaFn?pid=Api&P=0&h=180',
      name: 'Kamera Sony Alpha a6000',
      location: 'Makassar, Sulsel',
      price: 4800000,
      condition: 'Bekas',
    ),
    Product(
      id: 'p010',
      image: 'https://tse4.mm.bing.net/th/id/OIP.etPaLQlzckQPticEdE3XUAHaHa?pid=Api&P=0&h=180',
      name: 'Stroller Bayi Lipat',
      location: 'Depok, Jawa Barat',
      price: 550000,
      condition: "Bekas",
    ),
  ];

  List<Product> get products => _products;
}
