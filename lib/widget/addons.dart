import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class AddOnItem extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final int initialCount;

  const AddOnItem({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.initialCount = 0,
  }) : super(key: key);

  @override
  _AddOnItemState createState() => _AddOnItemState();
}

class _AddOnItemState extends State<AddOnItem> {
  int _count;

  _AddOnItemState() : _count = 0;

  @override
  void initState() {
    super.initState();
    _count = widget.initialCount;
  }

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Image.asset(widget.image, width: 40, height: 40),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: TextStyle(fontSize: 14)),
              Text(widget.subtitle, style: TextStyle(color: Colors.grey,fontSize: 14)),
            ],
          ),
          Spacer(),
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey[300],
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    size: 14,
                  ),
                  onPressed: _decrement,
                ),
                const SizedBox(width: kCustomSizedBoxWidth),
                ReusableText( // You can use const here if ReusableText is a const constructor
                  text: _count.toString(), // Show current count
                  fontSize: 15,
                ),
                const SizedBox(width: kCustomSizedBoxWidth),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 14,
                  ),
                  onPressed: _increment, 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
