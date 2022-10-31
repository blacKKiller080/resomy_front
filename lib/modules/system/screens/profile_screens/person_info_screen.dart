import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/buttons_item.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/text_input_field.dart';

class PersonInfoScreen extends StatefulWidget implements Navigatable {
  @override
  _PersonInfoScreenState createState() => _PersonInfoScreenState();

  @override
  String getName() {
    return Routes.person_info_screen;
  }
}

class _PersonInfoScreenState extends State<PersonInfoScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            //avatar(),
            BackgroundImage(),
            inputContainer(context),
            Positioned(
              top: 84.h,
              left: 30.4.w,
              right: 30.4.w,
              child: ButtonItem('Сохранить', 39.2.w, 8.93.w, 8.93.w, onTap: () {
                print("Saved");
              }),
            ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  Widget avatar() => Positioned(
        top: 69,
        left: 160,
        child: Container(
          width: 90,
          height: 90,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/png/Avatar.png',
                ),
              ),
              Positioned(
                bottom: 2,
                right: 0,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(219, 141, 149, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 3,
                child: Image.asset('assets/images/png/Vector.png',
                    width: 20, height: 20),
              ),
            ],
          ),
        ),
      );

  Widget inputContainer(BuildContext context) => Positioned(
        top: 22.78.h,
        left: 5.33.w,
        right: 5.33.w,
        child: Container(
          padding: EdgeInsets.only(top: 6.16.h, bottom: 9.36.h),
          width: 89.33.w,
          height: 50.7.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextInputField(
                  'Имя', TextInputType.name, MaskTextInputFormatter()),
              TextInputField(
                  'Фамилия', TextInputType.text, MaskTextInputFormatter()),
              TextInputField(
                'Номер телефона',
                TextInputType.number,
                MaskTextInputFormatter(
                  mask: '+# (###) ###-##-##',
                  filter: {"#": RegExp(r'[0-9]')},
                ),
              ),
              TextInputField(
                  'Дата рождения',
                  TextInputType.datetime,
                  MaskTextInputFormatter(
                      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})),
            ],
          ),
        ),
      );
}
