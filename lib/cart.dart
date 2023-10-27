import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 100, 15, 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/cart.png")),
              SizedBox(
                height: 25,
              ),
              Text(
                "YOUR CART IS EMPTY",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                  child: Text(
                      "Looks like you have not added anything to your cart"))
            ],
          ),
        ),
      ),
    );
  }
}
