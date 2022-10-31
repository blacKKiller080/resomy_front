import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';

class DateChooseScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            Positioned(
              top: 208.0,
              left: 20,
              right: 20,
              child: calendarContainer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget calendarContainer() => Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 23,
              left: 118,
              child: Text(
                '2021',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(209, 130, 139, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 65,
              left: 141,
              child: Text(
                'July',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(209, 130, 139, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 113,
              left: 30,
              child: Container(
                width: 269,
                height: 188,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 5,
                      child: Text(
                        '1',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 46,
                      child: Text(
                        '2',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 88,
                        child: Text(
                          '3',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(142, 138, 138, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                    Positioned(
                      top: 0,
                      left: 172,
                      child: Text(
                        '5',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 214,
                      child: Text(
                        '6',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 130,
                      child: Text(
                        '4',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 256.5,
                      child: Text(
                        '7',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 3.5,
                      child: Text(
                        '8',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 45.5,
                      child: Text(
                        '9',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 84.5,
                      child: Text(
                        '10',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 126.5,
                      child: Text(
                        '11',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 169,
                      child: Text(
                        '12',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 211.5,
                      child: Text(
                        '13',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 43,
                      left: 253.5,
                      child: Text(
                        '14',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 1,
                      child: Text(
                        '15',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 43,
                      child: Text(
                        '16',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 85,
                      child: Text(
                        '17',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 169,
                      child: Text(
                        '19',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 210,
                      child: Text(
                        '20',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 127.5,
                      child: Text(
                        '18',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 86,
                      left: 253.5,
                      child: Text(
                        '21',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 0,
                      child: Text(
                        '22',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 42,
                      child: Text(
                        '23',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 83.5,
                      child: Text(
                        '24',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 171,
                      left: 0,
                      child: Text(
                        '29',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 171,
                      left: 41.5,
                      child: Text(
                        '30',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 171,
                      left: 85,
                      child: Text(
                        '31',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 167.5,
                      child: Text(
                        '26',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 210.5,
                      child: Text(
                        '27',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 126.5,
                      child: Text(
                        '25',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 128,
                      left: 252,
                      child: Text(
                        '28',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(142, 138, 138, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 432,
              left: 94,
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 147, height: 45),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // <-- Radius
                    ),
                    primary: Color.fromARGB(255, 255, 151, 151),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  child: Text(
                    'Сохранить',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
        width: 335,
        height: 523,
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
      );

  @override
  String getName() {
    return Routes.date_choose_screen;
  }
}
