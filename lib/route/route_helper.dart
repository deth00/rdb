import 'package:get/get.dart';
import 'package:rdb_gro_app/view/home/dashborad_page.dart';
import 'package:rdb_gro_app/view/home/info_page.dart';
import 'package:rdb_gro_app/view/home/transition_page.dart';
import 'package:rdb_gro_app/view/service/calendar/calendar_page.dart';
import 'package:rdb_gro_app/view/auth/login/login_page.dart';
import 'package:rdb_gro_app/view/home/home_page.dart';
import 'package:rdb_gro_app/view/service/fees_page.dart';
import 'package:rdb_gro_app/view/service/local/local_service_page.dart';
import 'package:rdb_gro_app/view/service/news_page.dart';
import 'package:rdb_gro_app/view/service/service_page.dart';
import 'package:rdb_gro_app/view/splash_screen.dart';
import 'package:rdb_gro_app/widgets/nav.dart';
import 'package:rdb_gro_app/widgets/navbar.dart';

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

  static const String transition = '/transition';
  static String getTransition() => transition;

  static const String localservice = '/localservice';
  static String getLocalService() => localservice;

  static const String fees = '/fees';
  static String getFees() => fees;

  static const String news = '/news';
  static String getNews() => news;

  static const String navbar = '/navbar';
  static String getNavbar() => navbar;

  static const String nav = '/nav';
  static String getNav() => nav;

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(
        name: login,
        page: () => const LoginPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: navbar,
        page: () => const NavBar(),
        transition: Transition.fadeIn),
    GetPage(
        name: nav,
        page: () => const NavSecond(),
        transition: Transition.fadeIn),
    GetPage(
        name: calendar,
        page: () => const CalendarPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: home,
        page: () => const HomePage(),
        transition: Transition.fadeIn),
    GetPage(
        name: info,
        page: () => const InfoPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: service,
        page: () => const ServicePage(),
        transition: Transition.fadeIn),
    GetPage(
        name: dashborad,
        page: () => const DashboradPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: transition,
        page: () => const TransitionPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: localservice,
        page: () => const LocalServicePage(),
        transition: Transition.fadeIn),
    GetPage(
        name: fees,
        page: () => const FeesPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: news,
        page: () => const NewsPage(),
        transition: Transition.fadeIn),
  ];
}
