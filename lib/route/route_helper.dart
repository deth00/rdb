import 'package:get/get.dart';
import 'package:rdb_gro_app/view/home/dashborad_page.dart';
import 'package:rdb_gro_app/view/home/info_page.dart';
import 'package:rdb_gro_app/view/service/calendar/calendar_page.dart';
import 'package:rdb_gro_app/view/auth/login/login_page.dart';
import 'package:rdb_gro_app/view/home/home_page.dart';
import 'package:rdb_gro_app/view/service/service_page.dart';
import 'package:rdb_gro_app/view/splash_screen.dart';

class RouteHelper {
  static const String initial = "/";
  static const String splashPage = "/splash-page";
  static String getInitial() => initial;
  static String getSplashPage() => splashPage;

  //auht
  static const String calendar = '/calendar';
  static String getCalendar() => calendar;
  static const String login = "/login";
  static String getLogin() => login;

  //
  static const String service = '/service';
  static String getService() => service;

  //home
  static const String home = '/home';
  static String getHome() => home;

  static const String info = '/info';
  static String getInfo() => info;

  static const String dashborad = '/dashborad';
  static String getDashborad() => dashborad;

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: calendar, page: () => const CalendarPage()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: info, page: () => const InfoPage()),
    GetPage(name: service, page: () => const ServicePage()),
    GetPage(name: dashborad, page: () => const DashboradPage())
  ];
}
