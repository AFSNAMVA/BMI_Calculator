
import 'package:bmi_calculator1/constants/app_assets.dart';

class OnboardItemModel {
  final String title;
  final String desction;
  final String imageUrl;

  OnboardItemModel(
      {required this.title, required this.desction, required this.imageUrl});
  static final List<OnboardItemModel> items = [
    OnboardItemModel(
      title: 'TİTLE 1',
      desction: 'DESCRIPTION 1',
      //imageUrl: 'assets/images/onboard_image.png',
      imageUrl:AppAssets.onboardImage1,
    ),
    OnboardItemModel(
      title: 'TİTLE 2',
      desction: 'DESCRIPTION 2',
      imageUrl:AppAssets.onboardImage2,
    ),
    OnboardItemModel(
      title: 'TİTLE 3',
      desction: 'DESCRIPTION 3',
      imageUrl:AppAssets.onboardImage3,
    ),
  ];
}
