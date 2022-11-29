import 'package:fifa_woldcup/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

TextStyle textStyle(
    {Color? textColor, double? fontSize, FontWeight? fontWeight}) {
  return GoogleFonts.inter(
    color: textColor ?? Utils.black,
    fontWeight: fontWeight,
    fontSize: fontSize ?? 12.sp,
  );
}

Widget textWidget(String text,
    {TextAlign? textAlign,
      int? maxLines,
      bool? softWrap,
      TextOverflow? textOverflow,
      TextStyle? style,
      Color? textColor,
      double? fontSize,
      FontWeight? fontWeight,
      TextDecoration? decoration}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: maxLines,
    softWrap: softWrap,
    overflow: textOverflow,
    style: style ??
        GoogleFonts.roboto(
          decoration: decoration,
          color: textColor ?? Utils.black,
          fontWeight: fontWeight,
          fontSize: fontSize ?? 12.sp,
        ),
  );
}

Widget textFormFieldWidget(
    TextEditingController controller, String hintText, String textError,
    {Widget? suffix,
      bool obscureText = false,
      TextInputType? textInputType,
      Widget? prifix}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    validator: (value) => value != null && value.isEmpty ? textError : null,
    onSaved: (value) => controller.text = value ?? '',
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Utils.black,
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      hintText: hintText,
      hintStyle: textStyle(textColor: Utils.greyLight, fontSize: 11.sp),
      suffixIcon: suffix,
      prefixIcon: prifix,
      filled: true,
    ),
    keyboardType: textInputType,
    style: textStyle(textColor: Utils.white),
  );
}

Widget textFormFieldlableWidget(
    TextEditingController controller, String hintText, String textError,
    {Widget? suffix,
      String? lableText,
      bool obscureText = false,
      TextInputType? textInputType,
      Widget? prifix}) {
  return TextField(
    controller: controller,
    style: TextStyle(fontSize: 16, color: Colors.white),
    keyboardType: textInputType,
    decoration: InputDecoration(
        enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        labelText: hintText,
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: prifix,
        suffix: suffix),
  );
}

Widget btnFillesignup(BuildContext context, String text, {double? radius}) {
  return Container(
    alignment: Alignment.center,
    height: 6.h,
    width: 36.w,
    decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            Color(0xFFB1237E),
            Color(0xFF31354E),
          ],
        ),
        borderRadius: BorderRadius.circular(radius ?? 42)),
    padding: const EdgeInsets.only(top: 12, bottom: 12),
    child: textWidget(
      text,
      textColor: Utils.white,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget btnFille(BuildContext context, String text, {double? radius}) {
  return Container(
    alignment: Alignment.center,
    height: 6.h,
    width: 80.w,
    decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: [
            Color(0xFF01b7ff),
            Color(0xFF1674c4),
          ],
        ),
        borderRadius: BorderRadius.circular(radius ?? 42)),
    padding: const EdgeInsets.only(top: 12, bottom: 12),
    child: textWidget(text,
        textColor: Utils.white, fontWeight: FontWeight.w600, fontSize: 10.sp),
  );
}
