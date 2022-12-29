import 'package:cartlist/RESOURCE/colorFile.dart';
import 'package:cartlist/WIDGETS/cardWidgets.dart';
import 'package:cartlist/WIDGETS/textWidgets.dart';
import 'package:flutter/material.dart';

cartAlertDialogBox(BuildContext context) {
  AlertDialog alert = AlertDialog(
    actions: [
      SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        height: MediaQuery.of(context).size.height / 2.7,
        child: Column(
          children: [
            labelCardIcon(labelText: 'Select Quantity'),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: colorPrimary),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: appRichTextWidget(textOne: "25", textTwo: "Gram"),
                  );
                }),
              ),
            ),
            labelCardIcon(labelText: 'Daily Usage'),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: colorPrimary),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: appRichTextWidget(textOne: "25", textTwo: "Gram"),
                  );
                }),
              ),
            ),
            quantityLabel(
                labelText: "Item Quantity", quantity: "1", params: "KG"),
            quantityLabel(
                labelText: "Daily Usage", quantity: "25", params: "GRAM"),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: colorPrimary,
                      height: 40,
                      width: MediaQuery.of(context).size.width / 2.7,
                      child: const Center(
                        child: Text(
                          "CANCEL",
                          style: TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                    Container(
                      color: colorPrimary,
                      height: 40,
                      width: MediaQuery.of(context).size.width / 2.7,
                      child: const Center(
                        child: Text(
                          "CONFIRM",
                          style: TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
