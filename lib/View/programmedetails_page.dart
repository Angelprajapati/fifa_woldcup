import 'package:fifa_woldcup/Cantroller/Scorepagecantroller.dart';
import 'package:fifa_woldcup/Modal/model.dart';
import 'package:fifa_woldcup/Utils/WidgetUtils.dart';
import 'package:fifa_woldcup/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class programmedetails extends StatelessWidget {
  programmedetails({Key? key}) : super(key: key);
  final Tvprogrammedetails = Get.put(tvprogrammedetails());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: GetX<tvprogrammedetails>(builder: (controller) {
        return ListView.builder(
          itemCount: controller.Programe_details.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: textWidget(
                        Tvprogrammedetails.Programe_details[index].Date,
                        fontSize: 15.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 12.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(
                                    Tvprogrammedetails
                                        .Programe_details[index].group,
                                    textColor: Utils.grey,
                                    fontSize: 10.sp),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(
                                    Tvprogrammedetails
                                        .Programe_details[index].time,
                                    textColor: Utils.grey,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(Tvprogrammedetails
                                    .Programe_details[index].team1),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(Tvprogrammedetails
                                    .Programe_details[index].score1),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(Tvprogrammedetails
                                    .Programe_details[index].team2),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: textWidget(Tvprogrammedetails
                                    .Programe_details[index].score2),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
