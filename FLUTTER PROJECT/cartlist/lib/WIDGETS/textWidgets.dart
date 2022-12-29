import 'package:cartlist/RESOURCE/colorFile.dart';
import 'package:flutter/cupertino.dart';

Widget appRichTextWidget({
  required String textOne,
  required String textTwo,
}) {
  return RichText(
    text: TextSpan(children: [
      TextSpan(
        text: textOne,
        style: const TextStyle(color: colorBlack),
      ),
      TextSpan(
        text: textTwo,
        style:
            const TextStyle(color: colorPrimary, fontWeight: FontWeight.bold),
      ),
    ]),
  );
}
