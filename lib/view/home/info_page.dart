import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.bgColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Image.asset(AppImage.cont),
                        const Text(
                          'ຕິດຕໍ່ພະນັກງານ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'ຂໍ້ມູນບັນຊີ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Image.asset(AppImage.logout),
                        const Text('ອອກລະບົບ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.mainColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Image.asset(AppImage.profile),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ຊື່ບັນຊີ: PHONGSAVANH BOUBPHACHANH MR'),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text('ເລກບັນຊີ: 0201 11XXXXXXXXXXX'),
                          const SizedBox(width: 40),
                          Image.asset(AppImage.show),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'ປະເພດ: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'ເລກທີ່ສັນຍາ: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'ໄລຍະກູ້ຢືມ: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'ຍອດໜີ້: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'ອັດຕາດອກເບ້ຍ: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'ຊັ້ນໜີ້: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ປະເພດ: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'ເລກທີ່ສັນຍາ: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'ໄລຍະກູ້ຢືມ: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '200.000.000 kip ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '200.000 kip ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'ຊັ້ນໜີ້: ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
