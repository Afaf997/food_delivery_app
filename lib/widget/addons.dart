import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class AddOnItem extends StatefulWidget {
  final String image;
  final String overlayImage; 
  final String title;
  final String subtitle;
  final int initialCount;

  const AddOnItem({
    Key? key,
    required this.image,
    required this.overlayImage,
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
      padding: const EdgeInsets.symmetric( vertical: 5),
      child: Row(
        children: [
          Stack(
            children: [
              Image.asset(widget.image, width: 40, height: 40),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(widget.overlayImage, width: 40, height: 40),
              ),
            ],
          ),
         const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: const TextStyle(fontSize: 14)),
              Text(widget.subtitle, style: const TextStyle(color:korgGrey, fontSize: 14)),
            ],
          ),
          Spacer(),
          Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kradiuscolor
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
                ReusableText(
                  text: _count.toString(),
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
