import 'package:flutter/material.dart';

class ContohWidget<T, RS, RI> extends StatefulWidget {
  final T? value;
  final RS Function(T?)? extractorValue;
  final RI Function(T?)? extractorId;
  const ContohWidget(
      {this.value, this.extractorValue, this.extractorId, Key? key})
      : super(key: key);

  @override
  _ContohWidgetState<T> createState() => _ContohWidgetState();
}

class _ContohWidgetState<U> extends State<ContohWidget<U, String, int>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
        items: <U>[]
            .map((e) => DropdownMenuItem<int>(
                value: widget.extractorId!(e),
                child: Text(widget.extractorValue!(e))))
            .toList(),
        onChanged: (val) {
          print(val);
        });
  }
}
