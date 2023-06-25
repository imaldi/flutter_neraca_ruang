import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/comment_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';

class CommentWidget extends ConsumerWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var commentList = ref.watch(commentsProvider);
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
              commentList.when(
                  data: (data) {
                    if (data.length > 0) {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: (c, i) {
                            return ListTile(
                              title: Text("${data[i].komentar}"),
                              subtitle: Text("by: ${data[i].username}"),
                            );
                          });
                    }
                    return Center(
                      child: Text("- Belum Ada Komentar -"),
                    );
                  },
                  error: (o, st) => Center(
                        child: Text("There is an error: $st"),
                      ),
                  loading: () => CircularProgressIndicator()),
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
