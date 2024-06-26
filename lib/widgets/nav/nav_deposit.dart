import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/view/credit/transition_credit_page.dart';
import 'package:rdb_gro_app/view/deposit/dashborad_deposit_page.dart';
import 'package:rdb_gro_app/view/notification/noti_page.dart';
import 'package:rdb_gro_app/view/service/service_page.dart';
import 'package:rdb_gro_app/view/setting/setting_page.dart';

class NavDeposti extends StatefulWidget {
  const NavDeposti({super.key});

  @override
  State<NavDeposti> createState() => _NavDepostiState();
}

class _NavDepostiState extends State<NavDeposti> {
  int _sectectIndex = 0;

  List page = [
    const DeshboradDepositPage(),
    const NotiPage(),
    const SettingPage(),
    const ServicePage()
  ];
  void onTapNav(int index) {
    setState(() {
      _sectectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_sectectIndex],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
        ),
        child: Row(
          children: [
            NavigatorItem(
                index: 0,
                title: 'ບັນຊີ',
                alert: false,
                icons: Icons.credit_card_rounded),
            NavigatorItem(
                index: 1,
                title: 'ແຈ້ງເຕືອນ',
                alert: false,
                icons: Icons.notifications_active_rounded),
            NavigatorItem(
                index: 2,
                title: 'ຕັ້ງຄ່າ',
                alert: false,
                icons: Icons.settings),
            NavigatorItem(
                index: 3,
                title: 'ບໍລິການ',
                alert: false,
                icons: Icons.grid_view_outlined),
          ],
        ),
      ),
    );
  }

  Widget NavigatorItem(
      {IconData? icons,
      required int index,
      required String title,
      required bool alert,
      Widget? widget}) {
    return GestureDetector(
      onTap: () {
        _sectectIndex = index;
        if (!mounted) return;
        setState(() {});
      },
      child: Container(
        height: Dimensions.height60,
        width: MediaQuery.of(context).size.width / 4,
        decoration: index == _sectectIndex
            ? const BoxDecoration(
                color: Colors.white,
              )
            : const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            alert
                ? SizedBox(child: widget)
                : Icon(
                    icons,
                    size: Dimensions.iconSize38,
                    color: index == _sectectIndex
                        ? AppColors.mainColor
                        : Colors.white,
                  ),
            Text(
              title,
              style: TextStyle(
                  color: index == _sectectIndex
                      ? AppColors.mainColor
                      : Colors.white,
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
