import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      toolbarHeight: 100,
      leading: IconButton(
        onPressed: (){Navigator.pop(context);},
        icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title:const ReusableText(text: "My Cart",fontWeight: FontWeight.bold,fontSize: 23,),
        centerTitle: true,
      ),
      
    );
  }
} 