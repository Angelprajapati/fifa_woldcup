import 'package:fifa_woldcup/Modal/model.dart';
import 'package:fifa_woldcup/Utils/colors.dart';
import 'package:get/get.dart';

class Scorepagecantroller extends GetxController {
  final selected = "some book type".obs;

  void setSelected(String value) {
    selected.value = value;
  }
}

class Scorepage_tvprogramme extends GetxController {
  var Tvprogramme = <tvprogramme>[].obs;

  void onInit() {
    super.onInit();
    fetchtvprogramme();
  }

  void fetchtvprogramme() async {
    await Future.delayed(Duration(seconds: 1));
    var tvprogramme_result = [
      tvprogramme(
          "Grocery", "assets/images/fruits.svg", Utils.purple.withOpacity(0.2)),
      tvprogramme(
          "Bakery", "assets/images/fruits.svg", Utils.purple.withOpacity(0.2)),
      tvprogramme("Milk Products", "assets/images/fruits.svg",
          Utils.purple.withOpacity(0.2)),
      tvprogramme(
          "Fashion", "assets/images/fruits.svg", Utils.purple.withOpacity(0.2)),
    ];
    Tvprogramme.value = tvprogramme_result;
  }
}

class tvprogrammedetails extends GetxController {
  var Programe_details = <programme_details>[].obs;

  void onInit() {
    super.onInit();
    fetchprogramedetails();
  }

  void fetchprogramedetails() async {
    await Future.delayed(Duration(seconds: 1));
    var tvprogramedetails = [
      programme_details("Group A", "21:30", "0", "2","QATAR", "ECUADOR","20 NOV 2022"),
      programme_details("Group A", "21:30", "0", "2","QATAR", "ECUADOR","21 Nov 2022"),
      programme_details("Group A", "21:30", "0", "2","QATAR", "ECUADOR","21 NOV 2022"),
      programme_details("Group A", "21:30", "0", "2","QATAR", "ECUADOR","21 NOV 2022"),
    ];
    Programe_details.value = tvprogramedetails;
  }
}
