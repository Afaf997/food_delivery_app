import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_menu_row.dart';
import 'package:food_delivery_app/functions/custom_bottom_navigation.dart';
import 'package:food_delivery_app/functions/locate_container.dart';
import 'package:food_delivery_app/functions/mainimage_container.dart';
import 'package:food_delivery_app/functions/top_container.dart';
import 'package:food_delivery_app/screens/cart_screen.dart';
import 'package:food_delivery_app/screens/favourite_screen.dart';
import 'package:food_delivery_app/screens/menu_screen.dart';
import 'package:food_delivery_app/screens/order_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/row_image.dart';
import 'package:food_delivery_app/widget/single_container.dart';
import 'package:food_delivery_app/widget/title.dart';


class HomeScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomeScreen({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  void onItemTapped(int index) {
    setState(() {
      selected = index;
    });
       if (index == 2) {
      Navigator.push(context,MaterialPageRoute(builder: (context) => MyOrderScreen()),
      );
    }else if(index == 1){
       Navigator.push(context,MaterialPageRoute(builder: (context) =>const CartScreen()));
    }else if(index == 3){
       Navigator.push(context,MaterialPageRoute(builder: (context) =>const FavouriteScreen()));
    }else if(index == 4){
       Navigator.push(context,MaterialPageRoute(builder: (context) => MenuScreen()));
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopContainer(),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildImageRichContainer(context),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildTitleRow('Menu'),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildMenuRow(context),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildTitleRow('Best Selling', actionText: 'See All'),
            const SizedBox(height: kCustomSizedBoxHeightA),
            buildImageRow(context),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildTitleRow('Top Deals'),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildImageContainer(     context,
              MenuItem(
                imagePath: 'assets/images/pic.jpg',
                itemName: 'Tomado Fries',
                rating: '4.5',
                description: 'Shrimp burger, French Fries, Drink',
                qrCode: 'QR 23',
              ),
            ),
            const SizedBox(height:kCustomSizedBoxHeight),
            buildImageContainer(context,
              MenuItem(
                imagePath: 'assets/images/rowPic1.jpg',
                itemName: 'Crispy Fried Chicken',
                rating: '4.5',
                description: '12 pcs chicken, French Fries, Drink',
                qrCode: 'QR 43',
              ),
            ),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildImageContainer(
              context,
              MenuItem(
                imagePath: 'assets/images/pic3.jpg',
                itemName: 'Crispy Fried Chicken',
                rating: '4.5',
                description: '12 pcs chicken, French Fries, Drink',
                qrCode: 'QR 43',
              ),
            ),
            const SizedBox(height:kCustomSizedBoxHeight),
            buildLocateContainer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selected,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
