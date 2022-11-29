import 'package:fifa_woldcup/Utils/WidgetUtils.dart';
import 'package:fifa_woldcup/Utils/colors.dart';
import 'package:fifa_woldcup/View/Scorepage.dart';
import 'package:fifa_woldcup/View/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({Key? key}) : super(key: key);

  TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _passwordVisible = RxBool(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff00246e), Color(0xff040f2b)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.cancel,
                        color: Utils.white,
                        size: 40,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 25, bottom: 15),
                  child: textWidget("Sign in",
                      fontSize: 16.sp, textColor: Utils.white),
                ),
                Center(
                  child: Container(
                    width: 90.w,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0xFF01b7ff)),
                      ),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Utils.white),
                      controller: _email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Utils.white,fontSize: 10.sp),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 90.w,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0xFF01b7ff)),
                      ),
                    ),
                    child: Obx(
                      () => TextFormField(
                        style: TextStyle(color: Utils.white),
                        controller: _password,
                        obscureText: !_passwordVisible.value,
                        decoration: InputDecoration(
                          suffix: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              _passwordVisible.value = !_passwordVisible.value;
                            },
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Utils.white,fontSize: 10.sp),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                GestureDetector(
                  onTap: () {
                    Get.to(Homepage());
                  },
                  child: Center(
                    child: btnFille(
                      context,
                      "SIGN IN",
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Center(
                    child: textWidget("Forgotten your password?",
                        textColor: Utils.blue,fontSize: 8.sp)),
                SizedBox(height: 5.h,),
                Center(
                    child: textWidget("Don't have an account ?",
                        textColor: Utils.white, fontSize: 8.sp)),
                SizedBox(height: 2.h,),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 6.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Utils.white),
                        borderRadius: BorderRadius.circular(42)),
                    child: textWidget("REGISTER",
                        textColor: Utils.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 10.sp),
                  ),
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 5.h,
                          width: 8.w,
                          child: SvgPicture.asset("assets/facebook.svg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 5.h,
                          width: 8.w,
                          child: SvgPicture.asset("assets/instagram.svg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 5.h,
                          width: 8.w,
                          child: SvgPicture.asset("assets/messanger.svg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 5.h,
                          width: 8.w,
                          child: SvgPicture.asset("assets/whatsapp.svg")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                    child:
                        textWidget("Terms | Privacy", textColor: Utils.white,fontSize: 10.sp))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
