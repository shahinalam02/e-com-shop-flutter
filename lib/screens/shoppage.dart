import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/shop.dart';
import 'package:shop_app/data/theme_model.dart';
import 'package:shop_app/widget/mydrawer.dart';
import 'package:shop_app/widget/productcard.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    final thememodel = Provider.of<ThemeProvider>(context);

    return Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text('ShopView'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cartpage'),
              icon: const Icon(Icons.shopping_bag),
            ),
            IconButton(
              onPressed: () {
                thememodel.toggleTheme();
              },
              icon: Icon(
                  thememodel.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            )
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Matching style and class with luxury and comfort.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    product: product,
                  );
                },
              ),
            )
          ],
        ));
  }
}
