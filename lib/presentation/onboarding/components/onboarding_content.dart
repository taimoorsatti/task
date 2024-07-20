




import '../../../utils/appassets.dart';

class OnboardingContents {
  final String title;
  final String subtitle;
  final String image;


  OnboardingContents({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "20% Discount New Arrival Product",
    subtitle: "Publish up your sallies more beautiful with this app!",
    image: AppAssets.onBoarding1,
  ),
  OnboardingContents(
    title: "Take Advantage Of The Offer Shopping",
    image: AppAssets.onBoarding3,
    subtitle: "Publish up your sallies more beautiful with this app",
  ),
  OnboardingContents(
    title: "All Types Offers Within Your Reach",
    image: AppAssets.onBoarding2,
    subtitle:"Publish up your sallies to make yourself more beautiful with this app.!"
  ),
];
