import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

showBayarDialog(BuildContext context) async {
  return await showDialog(context: context,builder: (c){
    return AlertDialog(
      title: Text("Bayar dulu, baru pakai"),
      content: Text("Kalau mau pakai, bayar dulu programmernya ya 😜"),
      actions: [
        ElevatedButton(onPressed: (){
          context.router.pop();
        }, child: Text("Ashyapp"))
      ],
    );
  });
}