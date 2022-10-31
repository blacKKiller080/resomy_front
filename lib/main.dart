import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:resomy_client/modules/system/screens/category_screens/family_screens/family_number_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/family_screens/kids_count_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/family_screens/kids_count_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/family_screens/wedding_number_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/family_screens/wedding_number_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/health_screens/bioritm_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/health_screens/bioritm_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/love_screens/love_by_name_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/love_screens/love_by_name_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/love_screens/men_code_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/love_screens/women_code_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/money_screens/custom_money_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/money_screens/custom_money_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/money_screens/money_number_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/money_screens/rich_code_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/money_screens/rich_code_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/fate_number_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/fate_number_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/health_screens/health_number_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/health_screens/health_number_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/pythagoras_square_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/pythagoras_square_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/totem_animal_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/totem_animal_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/traits_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/other_screens/traits_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/work_screens/destiny_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/work_screens/destiny_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/work_screens/profession_choice_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/work_screens/profession_choice_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/work_screens/successful_work_result.dart';
import 'package:resomy_client/modules/system/screens/category_screens/work_screens/successful_work_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/modules/core/screens/splash_screen.dart';
import 'package:resomy_client/modules/system/screens/category_screens/money_screens/money_code_result.dart';
import 'package:resomy_client/modules/system/screens/authorization_screens/authorization_screen.dart';
import 'package:resomy_client/modules/system/screens/profile_screens/date_choose_screen.dart';
import 'package:resomy_client/modules/system/screens/profile_screens/person_info_screen.dart';
import 'package:resomy_client/modules/system/system_screen.dart';
import 'package:resomy_client/modules/system/screens/authorization_screens/registration_screen.dart';
import 'package:resomy_client/modules/system/screens/authorization_screens/verification_screen.dart';
import 'core/helper/navigatable.dart';
import 'core/routes/routes.dart';
import 'modules/system/screens/category_screens/family_screens/family_number_result.dart';
import 'modules/system/screens/category_screens/family_screens/family_screen.dart';
import 'modules/system/screens/category_screens/health_screens/health_screen.dart';
import 'modules/system/screens/category_screens/love_screens/love_by_date.dart';
import 'modules/system/screens/category_screens/love_screens/love_date_result.dart';
import 'modules/system/screens/category_screens/love_screens/love_screen.dart';
import 'modules/system/screens/category_screens/love_screens/men_code_result.dart';
import 'modules/system/screens/category_screens/love_screens/women_code_screen.dart';
import 'modules/system/screens/category_screens/money_screens/money_number_result.dart';
import 'modules/system/screens/category_screens/money_screens/money_screen.dart';
import 'modules/system/screens/category_screens/other_screens/other_screen.dart';
import 'modules/system/screens/category_screens/work_screens/work_screen.dart';
import 'modules/system/screens/category_screens/money_screens/money_code_screen.dart';

void main() {
  runApp(MyApp()
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => MyApp(),
      // ),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: Routes.splash,
          routes: routes(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

routes() {
  List<Navigatable> screens = generateRoutes();
  Map<String, Widget Function(BuildContext)> routes = {};
  screens.forEach((element) {
    routes[element.getName()] = (context) => element;
  });
  return routes;
}

List<Navigatable> generateRoutes() {
  return [
    SplashScreen(),
    AuthorizationScreen(),
    SystemScreen(),
    RegistrationScreen(),
    VerificationScreen(),
    MoneyCodeResult(),
    MoneyCode(),
    LoveScreen(),
    HealthScreen(),
    MoneyScreen(),
    WorkScreen(),
    FamilyScreen(),
    OtherScreen(),
    LoveByDate(),
    LoveDateResult(),
    PersonInfoScreen(),
    DateChooseScreen(),
    FamilyNumberScreen(),
    FamilyNumberResult(),
    WeddingNumberScreen(),
    WeddingNumberResult(),
    KidsCountResult(),
    KidsCountScreen(),
    BioritmResult(),
    BioritmScreen(),
    HealthNumberResult(),
    HealthNumberScreen(),
    TotemAnimalResult(),
    TotemAnimalScreen(),
    TraitsResult(),
    TraitsScreen(),
    PythagorasSquareResult(),
    PythagorasSquareScreen(),
    FateNumberResult(),
    FateNumberScreen(),
    SuccessfulWorkResult(),
    SuccessfulWorkScreen(),
    ProfessionChoiceResult(),
    ProfessionChoiceScreen(),
    DestinyResult(),
    DestinyScreen(),
    LoveByNameScreen(),
    LoveByNameResult(),
    MenCodeScreen(),
    WomenCodeScreen(),
    MenCodeResult(),
    WomenCodeResult(),
    CustomMoneyScreen(),
    CustomMoneyResult(),
    MoneyNumberScreen(),
    MoneyNumberResult(),
    RichCodeScreen(),
    RichCodeResult(),
  ];
}
