import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/checkout.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
      final double containerWidth = 200.0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kWhite,
        toolbarHeight: 80,
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           const CartItem(
              title: "Tornado Fries",
              description:
                  "French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs",
              price: 23,
              quantity: 1,
            ),
           const CartItem(
              title: "Crispy Fried Chicken",
              description:
                  "French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs",
              price: 43,
              quantity: 1,
            ),
            const SizedBox(height: 20),
           Row(
  children: [
    SizedBox(
      width: 248,
      height: 44,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Enter promo code',
          labelStyle: TextStyle(color: korgGrey,fontSize: 14),
          fillColor: kColorgrey, 
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0), // Adjust border radius
            borderSide: BorderSide.none, // Remove border
          ),
        ),
      ),
    ),
    SizedBox(width: 10),
    SizedBox(
  width: 98,
  height: 44,
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    child: const Text("Apply",style: TextStyle(color: kWhite,fontSize: 14),),
  ),
)

  ],
),

            const SizedBox(height: 20),
            DeliveryOptions(),
            const SizedBox(height: 20),
            CheckoutSummary(),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String title;
  final String description;
  final int price;
  final int quantity;

  const CartItem({
    required this.title,
    required this.description,
    required this.price,
    required this.quantity,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.quantity;
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kColorgrey,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
             borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/rowPic.jpg',
              width: 139,
              height: 116,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              const  Row(
                  children: [
                    const Icon(Icons.star, color:kstarYellow, size: 9),
                    ReusableText(
                      text: '45',
                      fontSize: 8,
                    ),
                  ],
                ),
                Text(
                  widget.description,
                  style: const TextStyle(fontSize: 8, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Text(
                  '${widget.price} QR',
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            decoration:const BoxDecoration(
    color: kblack,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(10.0),
      bottomRight: Radius.circular(10.0),
    ),
  ),
            child: Column(
              children: [
               IconButton(
                  icon: const Icon(Icons.remove,color: kWhite,size: 14,),
                  onPressed: decrementQuantity,
                ), Text('$quantity',style:const TextStyle(color: kWhite,fontSize: 18),),
                 IconButton(
                  icon: const Icon(Icons.add,color: kWhite,size: 14,),
                  onPressed: incrementQuantity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DeliveryOptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final IconData icon; // Add icon parameter

  const DeliveryOptionButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.icon, // Add icon parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 11),
        decoration: BoxDecoration(
          color: Colors.grey[200], 
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? kOrangeColor : Colors.transparent, // Border color
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? kOrangeColor : ktextgrey,
            ),
            const SizedBox(width: 8), 
            Text(
              text,
              style: TextStyle(
                color: isSelected ? kOrangeColor : ktextgrey,
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryOptions extends StatefulWidget {
  @override
  _DeliveryOptionsState createState() => _DeliveryOptionsState();
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
   final double containerWidth = 200.0; 
  String selectedOption = 'Delivery';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Text('Delivery option',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DeliveryOptionButton(
              text: 'Delivery',
              isSelected: selectedOption == 'Delivery',
              onTap: () {
                setState(() {
                  selectedOption = 'Delivery';
                });
              },
              icon: Icons.delivery_dining, 
            ),
            DeliveryOptionButton(
              text: 'Take away',
              isSelected: selectedOption == 'Take away',
              onTap: () {
                setState(() {
                  selectedOption = 'Take away';
                });
              },
              icon: Icons.shopping_bag,
            ),
            DeliveryOptionButton(
              text: 'Car hop',
              isSelected: selectedOption == 'Car hop',
              onTap: () {
                setState(() {
                  selectedOption = 'Car hop';
                });
              },
              icon: Icons.car_rental, 
            ),
          ],
        ),
        if (selectedOption == 'Car hop')
          Padding(
  padding:const EdgeInsets.symmetric(vertical: 8.0),
  child: Column(
    children: [
    Padding(
  padding: const EdgeInsets.symmetric(vertical: 10),
  child: Row(
    children: [
    const  Expanded(
        flex: 2, 
        child: Text(
          "Vehicle Number",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        flex: 3, // Adjust the flex value as needed
        child: Container(
          height: 45,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: kColorgrey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "324389",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

Padding(
  padding: const EdgeInsets.symmetric(vertical: 10),
  child: Row(
    children: [
     const Expanded(
        flex: 2, // Adjust the flex value as needed
        child: Text(
          "Select Store",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        flex: 3, // Adjust the flex value as needed
        child: Container(
          height: 45,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: kColorgrey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "any location",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
              Icon(Icons.location_on, color: kOrangeColor),
            ],
          ),
        ),
      ),
    ],
  ),
),

    ],
  ),
)
,
        if (selectedOption == 'Take away')
Padding(
  padding: const EdgeInsets.symmetric(vertical: 15),
  child: Row(
    children: [
     const Text(
        "Select Store",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
     const SizedBox(width: 10),
      Expanded(
        child: Container(
           height: 45,
          padding: EdgeInsets.all(8.0), 
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
             child:const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "any location",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: korgGrey
                    ),
                  ),
                  Icon(Icons.location_on,color: kOrangeColor,),
                ],
              ),
            // ],
          // ),
        ),
      ),
    ],
  ),
)

    ],
    );
  }
}

class CheckoutSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration:const BoxDecoration(
        color: Colors.white,
       
      ),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SummaryRow(label: 'Item Price', value: '66 QR'),
          SummaryRow(label: 'Add ons', value: '6 QR'),
          SummaryRow(label: 'Discount', value: '-20 QR', isDiscount: true),
          Divider(),
          SummaryRow(label: 'Subtotal', value: '42 QR', isTotal: true),
           SizedBox(height: 16),
       ReusableButton(
                navigationTarget:CheckoutScreen(),
                buttonText: 'Continue Checkout',
                buttonColor:kOrangeColor,
                textColor: Colors.white,
                fontSize: 16,
              ),
        ],
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;
  final bool isDiscount;

  const SummaryRow({
    required this.label,
    required this.value,
    this.isTotal = false,
    this.isDiscount = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isDiscount ? Colors.red : Colors.black,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isDiscount ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
