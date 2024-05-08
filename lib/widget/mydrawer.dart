import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const DrawerHeader(
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Premium Shopping App'),
                  ],
                ),
              ),
              const VerticalDivider(
                color: Colors.black,
              ),
              ListTile(
                title: const Text('Shop'),
                leading: const Icon(Icons.home),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: const Text('Cart'),
                leading: const Icon(Icons.shopping_bag),
                onTap: () => Navigator.pushNamed(context, '/cartpage'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: ListTile(
              title: const Text('Exit'),
              leading: const Icon(Icons.logout),
              onTap: () => Navigator.pushNamed(context, '/intropage'),
            ),
          )
        ],
      ),
    );
  }
}
