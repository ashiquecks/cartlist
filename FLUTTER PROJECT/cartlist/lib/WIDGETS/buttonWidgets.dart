import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cartButton({
  required BuildContext context,
  required String buttonText,
  required void Function() buttonAction,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 5, left: 5),
    child: SizedBox(
      height: 30,
      child: ElevatedButton(
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    ),
  );
}

Widget favoriteButton() {
  return IconButton(
    icon: const Icon(Icons.favorite_border),
    onPressed: () {},
  );
}

Widget textIconButton({
  required String buttonText,
  required IconData buttonIcon,
}) {
  return TextButton.icon(
    icon: Icon(buttonIcon),
    onPressed: () {},
    label: Text(buttonText),
  );
}
