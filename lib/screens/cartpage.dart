import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/product.dart';
import 'package:shop_app/data/shop.dart';
import 'package:shop_app/data/theme_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    //Total price in cart
    double totalPriceCart() {
      double totalPrice = 00.00;
      for (var item in cart) {
        totalPrice += item.price!;
      }
      return totalPrice;
    }

    //add to card button
    void removetoCart(BuildContext context, Product product) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
            'Remove this item to my Cart',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          actions: [
            //if cancelled
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            //if yes
            MaterialButton(
              onPressed: () {
                //pop the dialog
                Navigator.pop(context);
                //remove from cart
                context.read<Shop>().removeProduct(product);
              },
              child: Text(
                'Yes',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
          ],
        ),
      );
    }

    final thememodel = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CartView',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              thememodel.toggleTheme();
            },
            icon: Icon(
                thememodel.isDarkMode ? Icons.light_mode : Icons.dark_mode),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Center(
                    child: Text(
                      'Your Cart is empty',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return ListTile(
                        title: Text(item.title.toString(),
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary)),
                        subtitle: Text(
                          '\$ ${item.price}',
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                        trailing: IconButton(
                          onPressed: () => removetoCart(context, item),
                          icon: const Icon(Icons.remove),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Price: \$${totalPriceCart()}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: ElevatedButton(
              onPressed: () {
                // Add your onPressed callback here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context)
                        .colorScheme
                        .secondary), // Change background color here
              ),
              child: Text(
                'Buy Now',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ), // Add your button text here
            ),
          )
        ],
      ),
    );
  }
}
