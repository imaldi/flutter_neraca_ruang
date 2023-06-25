import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';

import '../../core/consts/sizes.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(normal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Komentar",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(primaryColor),
                      fontSize: huge,
                      fontWeight: FontWeight.bold)),
              Divider(
                thickness: 2,
              ),
              Center(
                child: Text("- Belum Ada Komentar"),
              ),
              RoundedTextFormField(
                hint: "Komentar di sini",
                maxLines: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(primaryColor),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(huge))),
                      onPressed: () {},
                      child: Text("Kirim")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
