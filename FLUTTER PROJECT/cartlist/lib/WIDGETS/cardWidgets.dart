import 'package:cartlist/FUNCTIONS/cartAlertBox.dart';
import 'package:cartlist/RESOURCE/assetFile.dart';
import 'package:cartlist/RESOURCE/colorFile.dart';
import 'package:cartlist/WIDGETS/buttonWidgets.dart';
import 'package:cartlist/WIDGETS/textWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bannerCard({
  required String bannerImage,
  required BuildContext context,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage(bannerImage),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget stockCard({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 90,
                child: Image.asset(tomato),
              ),
              const Text("Tomato"),
              const Text(
                "Out of stock this item",
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
              const SizedBox(height: 5),
              cartButton(
                context: context,
                buttonText: 'Add to Cart',
                buttonAction: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({super.key});

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
              leading: Image.asset(tomato),
              title: const Text("Tomato"),
              subtitle: const Text("1 kg"),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appRichTextWidget(textOne: "Item Quantity ", textTwo: "1 kg"),
                  appRichTextWidget(
                      textOne: "Dayli Usage ", textTwo: "20 gram"),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textIconButton(
                  buttonText: "Add to Favorite",
                  buttonIcon: Icons.favorite_outline),
              cartButton(
                context: context,
                buttonText: "Add to Cart",
                buttonAction: () {
                  cartAlertDialogBox(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget labelCard() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Out of stocks",
          style: TextStyle(),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View All",
            style: TextStyle(color: Colors.lightGreen),
          ),
        ),
      ],
    ),
  );
}

Widget labelCardIcon({
  required String labelText,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: colorPrimary,
          size: 20,
        )
      ],
    ),
  );
}

Widget gridCard({
  required String categoryImage,
  required String categoryName,
  required void Function() buttonAction,
}) {
  return InkWell(
    onTap: buttonAction,
    child: SizedBox(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Image.network(categoryImage),
              ),
              Text(categoryName),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cartCard({
  required BuildContext context,
}) {
  return SizedBox(
    height: 150,
    child: Card(
      elevation: 10,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(tomato),
            title: const Text("Tomato"),
            subtitle: const Text("1kg"),
            trailing: cartButton(
                context: context, buttonText: 'Edit', buttonAction: () {}),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textIconButton(buttonText: "Remove", buttonIcon: Icons.delete),
              Container(
                height: 20,
                width: 2,
                color: Colors.grey,
              ),
              textIconButton(buttonText: "Share", buttonIcon: Icons.share),
            ],
          )
        ],
      ),
    ),
  );
}

Widget quantityLabel({
  required String labelText,
  required String quantity,
  required String params,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(labelText),
        appRichTextWidget(textOne: "$quantity ", textTwo: params),
      ],
    ),
  );
}
