import 'package:get/get.dart';
import 'package:rdb_gro_app/view/credit/dashborad_page.dart';
import 'package:rdb_gro_app/view/credit/installments_page.dart';
import 'package:rdb_gro_app/view/credit/transition_credit_page.dart';
import 'package:rdb_gro_app/view/home/info_credit_page.dart';
import 'package:rdb_gro_app/view/deposit/dashborad_deposit_page.dart';
import 'package:rdb_gro_app/view/deposit/transition_deposit_page.dart';
import 'package:rdb_gro_app/view/service/calendar/calendar_page.dart';
import 'package:rdb_gro_app/view/auth/login/login_page.dart';
import 'package:rdb_gro_app/view/home/home_page.dart';
import 'package:rdb_gro_app/view/service/fees_page.dart';
import 'package:rdb_gro_app/view/service/local/local_service_page.dart';
import 'package:rdb_gro_app/view/news/news_page.dart';
import 'package:rdb_gro_app/view/service/local/map_page.dart';
import 'package:rdb_gro_app/view/service/rate/rate_service_page.dart';
import 'package:rdb_gro_app/view/service/service_page.dart';
import 'package:rdb_gro_app/view/splash_screen.dart';
import 'package:rdb_gro_app/widgets/nav/nav_credit.dart';
import 'package:rdb_gro_app/widgets/nav/nav_deposit.dart';
import 'package:rdb_gro_app/widgets/nav/navbar.dart';

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

  static const String creditDeshborad = '/creditDeshborad';
  static String getCreditDashborad() => creditDeshborad;

  static const String depositDeshborad = '/depositDeshborad';
  static String getDepostiDashborad() => depositDeshborad;

  static const String transition = '/transition';
  static String getTransition() => transition;

  static const String depositTransition = '/depositTransition';
  static String getDepositTransition() => depositTransition;

  static const String localservice = '/localservice';
  static String getLocalService() => localservice;

  static const String fees = '/fees';
  static String getFees() => fees;

  static const String news = '/news';
  static String getNews() => news;

  static const String installments = '/installments';
  static String getInstallments() => installments;

  static const String navbar = '/navbar';
  static String getNavbar() => navbar;

  static const String navCredit = '/navCredit';
  static String getNavCredit() => navCredit;

  static const String navDeposit = '/navDeposit';
  static String getNavDeposit() => navDeposit;

  static const String rateService = '/rateService';
  static String getRateService() => rateService;

  static const String mapPage = '/map';
  static String getMap(int pageId) => '$mapPage?pageId=$pageId';

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
        name: navCredit,
        page: () => const NavCredit(),
        transition: Transition.fadeIn),
    GetPage(
        name: navDeposit,
        page: () => const NavDeposti(),
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
        page: () => const InfoCreditPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: service,
        page: () => const ServicePage(),
        transition: Transition.fadeIn),
    GetPage(
        name: creditDeshborad,
        page: () => const DashboradCreditPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: depositDeshborad,
        page: () => const DeshboradDepositPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: transition,
        page: () => const TransitionCreditPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: depositTransition,
        page: () => const TransitionDepositPage(),
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
    GetPage(
        name: installments,
        page: () => const InstallmentsPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: rateService,
        page: () => const RateService(),
        transition: Transition.fadeIn),
    GetPage(
        name: mapPage,
        page: () {
          var pageId = Get.parameters['pageId'];
          return MapPage(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
  ];
}
