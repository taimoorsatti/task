import 'package:get/get.dart';
import 'package:task/models/teacher/teacher_model.dart';
import 'package:task/utils/appassets.dart';

class HelpController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    addListVideo();
    addListBlogs();
    super.onInit();
  }

  List<HelpModel> listVideo = [];
  List<HelpModel> listBlogs = [];

  addListVideo() {
    listVideo.add(HelpModel(name: "video1", imgae: AppAssets.video1));
    listVideo.add(HelpModel(name: "video2", imgae: AppAssets.video2));
    listVideo.add(HelpModel(name: "video3", imgae: AppAssets.video3));
    listVideo.add(HelpModel(name: "video4", imgae: AppAssets.blogs1));
    listVideo.add(HelpModel(name: "video5", imgae:  AppAssets.blogs2));
  }

  addListBlogs() {
    listBlogs.add(HelpModel(name: "Blogs1", imgae: AppAssets.blogs1));
    listBlogs.add(HelpModel(name: "Blogs2", imgae: AppAssets.blogs2));
    listBlogs.add(HelpModel(name: "Blogs3", imgae: AppAssets.blogs3));
    listBlogs.add(HelpModel(name: "Blogs4", imgae: AppAssets.blogs4));
    listBlogs.add(HelpModel(name: "Blogs5", imgae: AppAssets.blogs5));
    listBlogs.add(HelpModel(name: "Blogs6", imgae: AppAssets.blogs6));
  }
}
