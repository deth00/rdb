import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/slider_repo.dart';
import 'package:rdb_gro_app/model/slider_model.dart';

class SliderController extends GetxController {
  final SliderRepo sliderRepo;
  SliderController({required this.sliderRepo});
  List<Data> _slider = [];
  List<Data> get slider => _slider;

  Future<void> getSlider() async {
    Response response = await sliderRepo.getSlider();
    if (response.statusCode == 200) {
      _slider = [];
      _slider.addAll(SliderModel.fromJson(response.body).data);
      update();
    }
  }
}
