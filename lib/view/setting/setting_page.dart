import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:rdb_gro_app/widgets/service_buttom.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimensions.height55,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.bgColor),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80, right: 20),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const Text(
                    'ການຕັ້ງຄ່າ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const ServiceButtom(
              title: 'ປ່ຽນລະຫັດໃໝ່',
              text: 'ປ່ຽນລະຫັດຜ່ານເຂົ້າສູ່ລະບົບ',
              image: AppImage.key,
            ),
            const ServiceButtom(
              title: 'ຕັ້ງຄ່າລາຍນິ້ວມຶ',
              text: 'ເປີດ/ປິດ ການເຂົ້າສູ່ລະບົບດ້ວຍນິ້ວມື',
              image: AppImage.finger,
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
