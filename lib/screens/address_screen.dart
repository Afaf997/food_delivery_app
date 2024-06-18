import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';
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
       appBar: CustomAppBar(
        title: 'Add New Address',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
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
               const  SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    _buildContainer(label: 'Home', index: 0),
                   const  SizedBox(width: kCustomSizedBoxWidthE),
                    _buildContainer(label: 'Work', index: 1),
                   const  SizedBox(width: kCustomSizedBoxWidthE),
                    _buildContainer(label: 'Others', index: 2),
                  ],
                ),
               const  SizedBox(height: 16),
               const ReusableText(text: 'Delivery Address', fontSize: 16, fontWeight: FontWeight.w900),
               const  SizedBox(height: kCustomSizedBoxHeightD),
               const ReusableText(text: 'Address Line',fontSize: 15,fontWeight: FontWeight.w500,),
               const  SizedBox(height: kCustomSizedBoxHeightD),
                _buildTextFormField(
                  controller: addressController,
                  label: 'Address Line',
                  hint: 'Marina Twin Tower, Lusail',
                ),
               const  SizedBox(height: kCustomSizedBoxHeightD),
               const ReusableText(text: 'Street Number',fontSize: 15,fontWeight: FontWeight.w500,),
               const  SizedBox(height: kCustomSizedBoxHeightD),
                _buildTextFormField(
                  controller: streetNumberController,
                  label: 'Street Number',
                  hint: 'Ex: 10th street',
                ),
               const  SizedBox(height: kCustomSizedBoxHeightD),
               const ReusableText(text: 'House/Floor Number',fontSize: 15,fontWeight: FontWeight.w500,),
               const  SizedBox(height: kCustomSizedBoxHeightD),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: _buildTextFormField(
                        controller: houseNumberController,
                        label: 'House/Floor Number',
                        hint: 'Ex: 02',
                      ),
                    ),
                   const  SizedBox(width: 16),
                    Expanded(
                      child: _buildTextFormField(
                        controller: floorNumberController,
                        label: 'Floor Number',
                        hint: 'Ex: 2B',
                      ),
                    ),
                  ],
                ),
               const  SizedBox(height: 8),
               const ReusableText(text: 'Contact Person Name',fontSize: 15,fontWeight: FontWeight.w500,),
               const  SizedBox(height: 8),
                _buildTextFormField(
                  controller: contactNameController,
                  label: 'Contact Person Name',
                  hint: 'Muhammed Sheharin',
                ),
               const  SizedBox(height: 8),
               const ReusableText(text: 'Contact Number',fontSize: 15,fontWeight: FontWeight.w500,),
               const  SizedBox(height: 8),
                _buildTextFormField(
                  controller: contactNumberController,
                  label: 'Contact Number',
                  hint: '+974 321654',
                  prefixIcon: Padding(
                    padding:const EdgeInsets.all(12.0),
                    child: Image.asset('assets/images/qatar_logo.png'), 
                  ),
                ),
               const  SizedBox(height: 10),
               const ReusableText(text: 'Alternative Phone Number (Optional)',fontSize: 15,fontWeight: FontWeight.w500,),
               const  SizedBox(height: 8),
                _buildTextFormField(
                  controller: altContactNumberController,
                  label: 'Alternative Phone Number (Optional)',
                  hint: '',
                ),
               const  SizedBox(height: 16),
                Center(
                  child: ReusableButton(
                    navigationTarget: LoginScreen(),
                    buttonText: 'save',
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
            color: _selectedContainerIndex == index ? kWhite :kWhite,
            fontSize: 14,
            fontWeight: FontWeight.w600
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
        hintStyle:const TextStyle(fontSize: 14),
        hintText: hint,
        labelStyle:const TextStyle(color: Colors.grey,fontSize: 14),
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

