import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class score_channel extends StatelessWidget {
  const score_channel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2.h,
              width: 20.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          );
        },
      ),
    );
  }
}
