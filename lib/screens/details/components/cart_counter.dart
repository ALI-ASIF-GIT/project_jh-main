import 'package:flutter/material.dart';
import 'package:project_jh/constants.dart';
import 'package:project_jh/models/product.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  // ignore: non_constant_identifier_names
  int NumOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            setState(() {
              if (NumOfItem > 1) {
                setState(() {
                  NumOfItem--;
                });
              }
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            NumOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                NumOfItem++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedButton({required IconData icon, press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        // ignore: sort_child_properties_last
        child: Icon(
          icon,
          color: Colors.grey,
        ),
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
      ),
    );
  }
}
