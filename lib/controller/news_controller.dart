import 'package:get/get.dart';
import 'package:rdb_gro_app/data/respository/news_repo.dart';
import 'package:rdb_gro_app/model/news_model.dart';

class NewsController extends GetxController {
  final NewsRepo newsRepo;
  NewsController({required this.newsRepo});
  List<NewsData> _newData = [];
  List<NewsData> get newsData => _newData;
  Future<void> getNews() async {
    Response response = await newsRepo.getNews();
    if (response.statusCode == 200) {
      _newData = [];
      _newData.addAll(NewsModel.fromJson(response.body).data);
      update();
    } else {}
  }
}
