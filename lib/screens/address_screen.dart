import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class AddressForm extends StatefulWidget {
  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController streetNumberController = TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  final TextEditingController floorNumberController = TextEditingController();
  final TextEditingController contactNameController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController altContactNumberController = TextEditingController();
  final double kSizedBoxWidth = 8.0;

  int _selectedContainerIndex = 0;

  void _onContainerTap(int index) {
    setState(() {
      _selectedContainerIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: kWhite,
        elevation: 0,
        title:const Text('Add New Address',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/map2.png', 
                      width: MediaQuery.of(context).size.width * 0.89, 
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    _buildContainer(label: 'Home', index: 0),
                    SizedBox(width: 10),
                    _buildContainer(label: 'Work', index: 1),
                    SizedBox(width: 10),
                    _buildContainer(label: 'Others', index: 2),
                  ],
                ),
                SizedBox(height: 16),
                ReusableText(text: 'Delivery Address', fontSize: 16, fontWeight: FontWeight.w900),
                SizedBox(height: 8),
                ReusableText(text: 'Address Line',fontSize: 14,),
                SizedBox(height: 8),
                _buildTextFormField(
                  controller: addressController,
                  label: 'Address Line',
                  hint: 'Marina Twin Tower, Lusail',
                ),
                SizedBox(height: 8),
                ReusableText(text: 'Street Number'),
                SizedBox(height: 8),
                _buildTextFormField(
                  controller: streetNumberController,
                  label: 'Street Number',
                  hint: 'Ex: 10th street',
                ),
                SizedBox(height: 8),
                ReusableText(text: 'House/Floor Number'),
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: _buildTextFormField(
                        controller: houseNumberController,
                        label: 'House/Floor Number',
                        hint: 'Ex: 02',
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: _buildTextFormField(
                        controller: floorNumberController,
                        label: 'Floor Number',
                        hint: 'Ex: 2B',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ReusableText(text: 'Contact Person Name'),
                SizedBox(height: 8),
                _buildTextFormField(
                  controller: contactNameController,
                  label: 'Contact Person Name',
                  hint: 'Muhammed Sheharin',
                ),
                SizedBox(height: 8),
                ReusableText(text: 'Contact Number'),
                SizedBox(height: 8),
                _buildTextFormField(
                  controller: contactNumberController,
                  label: 'Contact Number',
                  hint: '+974 321654',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset('assets/images/qatar_logo.png'), // Ensure this image exists in your assets folder
                  ),
                ),
                SizedBox(height: 10),
                ReusableText(text: 'Alternative Phone Number (Optional)'),
                SizedBox(height: 8),
                _buildTextFormField(
                  controller: altContactNumberController,
                  label: 'Alternative Phone Number (Optional)',
                  hint: '',
                ),
                SizedBox(height: 16),
                Center(
                  child: ReusableButton(
                    navigationTarget: LoginScreen(),
                    buttonText: 'confirm',
                    buttonColor: kOrangeColor,
                    textColor: kWhite,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({required String label, required int index}) {
    return GestureDetector(
      onTap: () => _onContainerTap(index),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: _selectedContainerIndex == index ? kOrangeColor : kColorgrey,
          borderRadius: BorderRadius.circular(12),
          border: _selectedContainerIndex == index
              ? Border.all(color: kOrangeColor, width: 1)
              : Border.all(color: Colors.grey[400]!, width: 1),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: _selectedContainerIndex == index ? Colors.white : Colors.black,
            fontSize: 14
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String label,
    required String hint,
    Widget? prefixIcon,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintStyle: TextStyle(fontSize: 14),
        hintText: hint,
        labelStyle: TextStyle(color: Colors.grey,fontSize: 14),
        fillColor:kColorgrey,
        filled: true,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}

