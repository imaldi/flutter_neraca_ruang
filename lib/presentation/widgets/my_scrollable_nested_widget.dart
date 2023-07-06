import 'package:flutter/material.dart';

import '../../di.dart';

class MyScrollableNestedWidget extends StatefulWidget {
  final Widget child;
  // final ScrollController controller;
  const MyScrollableNestedWidget({required this.child, Key? key})
      : super(key: key);

  @override
  State<MyScrollableNestedWidget> createState() =>
      _MyScrollableNestedWidgetState();
}

class _MyScrollableNestedWidgetState extends State<MyScrollableNestedWidget> {
  var controller = sl<ScrollController>();

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollNotification>(
      onNotification: (OverscrollNotification value) {
        if (value.overscroll < 0 && controller.offset + value.overscroll <= 0) {
          if (controller.offset != 0) controller.jumpTo(0);
          return true;
        }
        if (controller.offset + value.overscroll >=
            controller.position.maxScrollExtent) {
          if (controller.offset != controller.position.maxScrollExtent) {
            controller.jumpTo(controller.position.maxScrollExtent);
          }
          return true;
        }
        controller.jumpTo(controller.offset + value.overscroll);
        return true;
      },
      child: widget.child,
    );
  }
}
