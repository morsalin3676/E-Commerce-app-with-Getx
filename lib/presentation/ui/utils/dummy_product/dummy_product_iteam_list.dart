import 'package:e_commerce1/data/model/product_models.dart';
import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';

List<ProductModel> dummyProducts = [

  ProductModel(
    image: AppAssets.product1,
    title: "Evening Dress",
    brand: "Dorothy Perkins",
    price: 15,
    rating: 5,
    name: '',
    oldPrice: 0,
    reviewCount: '',
  ),

  ProductModel(
    image: AppAssets.product2,
    title: "Sport Dress",
    brand: "Nike",
    price: 25,
    rating: 4.5,
    name: '',
    oldPrice: 0,
    reviewCount: '',
  ),

  ProductModel(
    image: AppAssets.product3,
    title: "T-Shirt",
    brand: "Adidas",
    price: 18,
    rating: 4,
    name: '',
    oldPrice: 0,
    reviewCount: '',
  ),
];