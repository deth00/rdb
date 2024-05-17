import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/view/home/dashborad_page.dart';
import 'package:rdb_gro_app/view/home/transition_page.dart';
import 'package:rdb_gro_app/view/service/service_page.dart';
import 'package:rdb_gro_app/view/setting/setting_page.dart';

class NavSecond extends StatefulWidget {
  const NavSecond({super.key});

  @override
  State<NavSecond> createState() => _NavSecondState();
}

class _NavSecondState extends State<NavSecond> {
  int _sectectIndex = 0;
  _widgetOptions(int index) {
    return IndexedStack(
      index: index,
      children: const [
        DashboradPage(),
        TransitionPage(),
        SettingPage(),
        ServicePage(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions(_sectectIndex),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ບັນຊີ'),
      //     BottomNavigationBarItem(icon: Icon(Icons.business), label: 'ແຈ້ງການ'),
      //     BottomNavigationBarItem(icon: Icon(Icons.school), label: 'ຕັ້ງຄ່າ'),
      //     BottomNavigationBarItem(icon: Icon(Icons.school), label: 'ບໍລີການ'),
      //   ],
      //   currentIndex: _sectectIndex,
      //   selectedItemColor: Colors.white,
      //   backgroundColor: AppColors.bgColor,
      //   onTap: _onItemTapped,
      // ),
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