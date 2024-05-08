import 'package:flutter/material.dart';
import 'package:shop_app/widget/addbutton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300]),
              child: const Icon(
                Icons.shopping_basket,
                size: 160,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Blaze Bench', style: TextStyle(fontSize: 20)),
          const SizedBox(
            height: 20,
          ),
          const Text('"Where Every Man is a Trailblazer."',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic)),
          const SizedBox(
            height: 20,
          ),
          Addbutton(
            icon: Icons.navigate_next,
            onTap: () => Navigator.pushNamed(context, '/shoppage'),
          )
        ],
      ),
    );
  }
}
