import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/base/ScreenLock.dart';
import 'package:rdb_gro_app/base/db_provider.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/header.dart';
import 'package:rdb_gro_app/widgets/service_buttom.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _secured = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DBprovider().getAuthState().then((value) {
      setState(() {
        _secured = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              text: 'ການຕັ້ງຄ່າ',
              icon: Icons.settings,
            ),
            const SizedBox(height: 10),
            const ServiceButtom(
              title: 'ປ່ຽນລະຫັດໃໝ່',
              text: 'ປ່ຽນລະຫັດຜ່ານເຂົ້າສູ່ລະບົບ',
              image: AppImage.key,
            ),
            ServiceButtom(
              title: 'ຕັ້ງຄ່າລາຍນິ້ວມຶ',
              text: 'ເປີດ/ປິດ ການເຂົ້າສູ່ລະບົບດ້ວຍນິ້ວມື',
              image: AppImage.finger,
              widget: Switch(
                value: _secured,
                activeTrackColor: AppColors.mainColor,
                onChanged: (value) {
                  setState(() {
                    _secured = value;
                  });
                  ScreenLock(ctx: context)
                      .authenticateUser(path: 'account', value: value);
                },
              ),
            ),
            const ServiceButtom(
              title: 'ຈັດການອຸປະກອນ',
              text: 'ກຳນົດອຸປະກອນທີ່ໃຊ້ຮັບການແຈ້ງເຕືອນ',
              image: AppImage.mobile,
            ),
            const ServiceButtom(
              title: 'ຕັ້ງຄ່າເນື້ອໃນການແຈ້ງເຕືອນ',
              text: 'ດອກເບ້ຍເງິນຝາກ ແລະ ກູ້ຢືມ ',
              image: AppImage.noti,
            ),
          ],
        ),
      ),
    );
  }
}
