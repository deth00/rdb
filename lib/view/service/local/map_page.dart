import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rdb_gro_app/controller/branch_local_controller.dart';
import 'package:rdb_gro_app/widgets/header.dart';

class MapPage extends StatelessWidget {
  final int pageId;
  const MapPage({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    // var local = Get.find<BranchLocalController>().local[pageId];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(
              text: 'ເເຜນທີ',
              onTap1: () {
                Get.back();
              },
            ),
            Expanded(
              child: GetBuilder<BranchLocalController>(builder: (data) {
                return data.localbyId.isNotEmpty
                    ? data.localbyId[0].latitude != null
                        ? GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: LatLng(data.localbyId[0].latitude!,
                                  data.localbyId[0].longitude!),
                              zoom: 12,
                            ),
                            markers: {
                              Marker(
                                infoWindow:
                                    InfoWindow(title: data.localbyId[0].name),
                                position: LatLng(data.localbyId[0].latitude!,
                                    data.localbyId[0].longitude!),
                                draggable: true,
                                markerId: MarkerId('1'),
                                // onDragEnd: (value) {
                                //   setMarker(value);
                                // },
                              )
                            },
                            // onTap: (value) {
                            //   setMarker(value);
                            // },
                          )
                        : const Center(child: Text('ບໍ່ມີຂໍ້ມູນ'))
                    : const Expanded(
                        child: Center(child: CircularProgressIndicator()));
              }),
            ),
          ],
        ),
      ),
    );
  }
}
