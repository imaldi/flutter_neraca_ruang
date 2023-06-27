import 'package:flutter/material.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = Color(primaryColor);
    final textStyle = TextStyle(color: textColor);
    return Stack(
      children: [
        Column(
          children: [
            Container(
              // height: 200,
              width: double.infinity,
              color: Colors.grey,
              padding: const EdgeInsets.symmetric(vertical: huge),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(small),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: textColor, width: 2),
                      ),
                      child: Container(
                        // height: huge,
                        // width: huge,
                        decoration: BoxDecoration(
                          color: textColor,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(big),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: huge + normal,
                        ),
                      ),
                    ),
                    Text(
                      "Aldi Majid",
                      style: textStyle,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: medium + normal,
              child: Container(
                color: Colors.transparent,
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: huge,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Alddiii")),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
