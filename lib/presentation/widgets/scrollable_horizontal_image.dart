import 'package:flutter/material.dart';

import '../../core/consts/sizes.dart';

class ScrollableHorizontalImage extends StatefulWidget {
  final List<Widget> children;
  const ScrollableHorizontalImage(this.children, {Key? key}) : super(key: key);

  @override
  _ScrollableHorizontalImageState createState() =>
      _ScrollableHorizontalImageState();
}

class _ScrollableHorizontalImageState extends State<ScrollableHorizontalImage> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              child: Container(
                constraints: const BoxConstraints(maxHeight: 250),
                child: Row(
                  children: widget.children
                      // [
                      //   Image.asset("assets/images/sliding_1.png"),
                      //   Image.asset("assets/images/dashboard_3.png"),
                      // ]
                      .map((e) => Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: medium),
                            constraints: BoxConstraints(
                                minWidth: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? MediaQuery.of(context).size.width
                                    : MediaQuery.of(context).size.height,
                                maxWidth: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? MediaQuery.of(context).size.width
                                    : MediaQuery.of(context).size.height),
                            child: SizedBox.expand(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: e,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  scrollController.animateTo(0,
                      duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                child: Icon(
                  Icons.keyboard_arrow_left,
                  size: extra,
                ),
              )),
          Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  scrollController.animateTo(
                      MediaQuery.of(context).size.width * 1.5,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeIn);
                },
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: extra,
                ),
              ))
        ],
      ),
    );
  }
}
