import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Product {
  String? name;
  String? image;
  Product({this.name, this.image});
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Product> product = [
    Product(name: 'Laptops', image: 'lib/images/laptops.jpg'),
    Product(name: 'Smartphones', image: 'lib/images/smartphones.jpg'),
    Product(name: 'Television', image: 'lib/images/television.jpg'),
    Product(name: 'Tablets', image: 'lib/images/tablets.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.5),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        product[index].image!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        product[index].name!,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                );
              })),
    );
  }
}
