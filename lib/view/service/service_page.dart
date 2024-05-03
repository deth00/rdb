import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/widgets/service_buttom.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.bgColor),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 20),
                    child: Image.asset(
                      AppImage.other,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'ບໍລິການອື່ນໆ',
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
              title: 'ໂປຣໂມຊັນ',
              text:
                  'ຮັບສ່ວນຫຼຸດພິເສດຈາກບັນດາຫ້າງຊັບພະສິນຄ້າ ແລະ ຮ້ານຄ້າເມື່ອສະແກນຈ່າຍ ຫຼື ສັ່ງຊື້ຜ່ານແອັບ RDB GROW ',
              image: AppImage.promotion,
            ),
            const ServiceButtom(
                title: 'ສະຖານທີ່ບໍລິການ',
                text: 'ສາຂາ ແລະ ໜ່ວຍບໍລິການ',
                image: AppImage.location),
            const ServiceButtom(
                title: 'ຄ່າທຳນຽມ',
                text: 'ຄ່າທຳນຽມບໍລິການຕ່າງໆຂອງ RDB',
                image: AppImage.fees),
            const ServiceButtom(
                title: 'ອັດຕາດອກເບ້ຍ',
                text: 'ດອກເບ້ຍເງິນຝາກ ແລະ ກູ້ຢືມ',
                image: AppImage.rate),
            const ServiceButtom(
                title: 'ຄຳຕິຊົມ',
                text: 'ຄຳຕິຊົມ ແລະ ຄວາມຄິດເຫັນ',
                image: AppImage.feedback),
            const ServiceButtom(
                title: 'ຂ່າວສານ',
                text: 'ເບິ່ງຂໍ້ມູນຂ່າວສານຂອງ ທພບ',
                image: AppImage.news),
          ],
        ),
      ),
    );
  }
}
