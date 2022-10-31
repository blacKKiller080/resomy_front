import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';

class SplashScreen extends StatefulWidget implements Navigatable {
  @override
  _SplashScreenState createState() => _SplashScreenState();

  @override
  String getName() {
    return Routes.splash;
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacementNamed(Routes.system);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset('assets/images/svg/logo.svg'),
      ),
    );
  }
}
