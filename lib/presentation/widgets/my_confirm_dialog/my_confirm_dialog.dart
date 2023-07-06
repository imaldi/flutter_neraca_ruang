import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';

import '../../../core/consts/sizes.dart';
import '../../../core/helper_functions/media_query/media_query_helpers.dart';

Future myConfirmDialog(
  BuildContext context, {
  String? basicContentString,
  String? title,
  String? positiveButtonText,
  String? negativeButtonText,
  Function? positiveButton,
  Function? negativeButton,
  Widget? customContent,
  Function()? dismissedDialogCallback,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? "Confirm",
          ),
        ],
      ),
      content: customContent ??
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                basicContentString ?? ""
                // "$content",
                // style: sansPro(fontWeight: FontWeight.w600, fontSize: 16),
                ,
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
      actions: [
        Container(
          margin: EdgeInsets.all(normal),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  height: 45,
                  width: widthScreen(context),
                  child: ElevatedButton(
                    onPressed: () {
                      if (negativeButton != null) {
                        negativeButton();
                      } else {
                        context.router.pop();
                        // navigatorPop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(normal)),
                      backgroundColor: Color(primaryColor),
                      side: const BorderSide(color: Color(primaryColor)),
                    ),
                    child: Text(negativeButtonText ?? "No"),
                  ),
                ),
              ),
              const SizedBox(width: medium),
              Flexible(
                child: Container(
                  height: 45,
                  width: widthScreen(context),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(normal)),
                      backgroundColor: Color(primaryColor),
                      side: const BorderSide(color: Color(primaryColor)),
                    ),
                    onPressed: () {
                      positiveButton!();
                      // Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    child: Text(positiveButtonText ?? "Yes"),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  ).then((value) =>
      dismissedDialogCallback != null ? dismissedDialogCallback() : null);
}
