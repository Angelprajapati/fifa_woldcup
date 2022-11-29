import 'package:fifa_woldcup/Cantroller/Scorepagecantroller.dart';
import 'package:fifa_woldcup/Utils/WidgetUtils.dart';
import 'package:fifa_woldcup/Utils/colors.dart';
import 'package:fifa_woldcup/View/score_channel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'programmedetails_page.dart';

class Scorepage extends StatelessWidget {
  Scorepage({Key? key}) : super(key: key);
  Scorepagecantroller scorecantroller = Scorepagecantroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.2),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Column(
            children: [
              textWidget("FIFA WORLD CUP",
                  fontSize: 10.sp, textColor: Utils.white),
              textWidget("Q_utar",
                  fontSize: 10.sp,
                  textColor: Utils.white,
                  fontWeight: FontWeight.bold),
            ],
          ),
          leading: Icon(Icons.search),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person_outline),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10.h,
                width: double.infinity,
                color: Colors.purple,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textWidget("Scores & Fixture | ",
                          fontWeight: FontWeight.bold,
                          textColor: Utils.white,
                          fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textWidget("WHERE TO WATCH : "),
              ),
              // DropdownButton(
              //     value: dropdownvalue,
              //     icon: const Icon(Icons.keyboard_arrow_down),
              //     items: items.map((String items) {
              //       return DropdownMenuItem(
              //         value: items,
              //         child: Text(items),
              //       );
              //     }).toList(),
              //   onChanged:  ( String ? newValue ) {
              //     scorecantroller.selected=newValue;
              //     scorecantroller.update();
              //   },
              // ),
              score_channel(),
              programmedetails()
            ],
          ),
        ) //CustonScrollView
        ); //Scaffold
  }
}
