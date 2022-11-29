import 'package:fifa_woldcup/Cantroller/homepagecantroller.dart';
import 'package:fifa_woldcup/View/Scorepage.dart';
import 'package:fifa_woldcup/View/Scorepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 9.sp);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 9.sp);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Colors.purple,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'FiFA WORLD CUP',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.video_camera_back,
                    size: 20.0,
                  ),
                ),
                label: 'Highlights',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.score,
                    size: 20.0,
                  ),
                ),
                label: 'Scores',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.group,
                    size: 20.0,
                  ),
                ),
                label: 'Teams',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.menu,
                    size: 20.0,
                  ),
                ),
                label: 'Menu',
                backgroundColor: Colors.purple,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final HomepageCantroller homepageCantroller =
        Get.put(HomepageCantroller(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, homepageCantroller),
      body: Obx(() => IndexedStack(
            index: homepageCantroller.tabIndex.value,
            children: [
              Scorepage(),
              Scorepage(),
              Scorepage(),
              Scorepage(),
              Scorepage(),
            ],
          )),
    ));
  }
}
