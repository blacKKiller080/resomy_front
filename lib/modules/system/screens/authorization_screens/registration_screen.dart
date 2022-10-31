import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/buttons_item.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/text_input_field.dart';
import 'package:sizer/sizer.dart';

class RegistrationScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            phoneNumberInput(context),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  Widget phoneNumberInput(BuildContext context) => Positioned(
        top: 24.87.h,
        left: 4.66.w,
        right: 4.66.w,
        child: Container(
          padding: EdgeInsets.only(left: 6.w, top: 6.52.h, right: 6.w),
          width: 74.26.w,
          height: 41.81.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              TextInputField(
                  'Номер телефона',
                  TextInputType.number,
                  MaskTextInputFormatter(
                      mask: '+# (###) ###-##-##',
                      filter: {"#": RegExp(r'[0-9]')})),
              SizedBox(
                height: 12.06.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.verification_screen);
                },
                child: ButtonItem('Получить PIN код', 41.33.w, 2.66.w, 2.66.w),
              ),
            ],
          ),
        ),
      );

  @override
  String getName() {
    return Routes.registration_screen;
  }
}
