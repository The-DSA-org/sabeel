import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/app_images/app_images.dart';
import 'package:sabeel_app/core/helpers/shared_pref.dart';
import 'package:sabeel_app/core/routing/routes_names.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/theming/app_colors.dart';
import '../../core/theming/app_text_styles.dart';
import 'onboarding_item.dart';
import 'onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingModel> model = [
    OnBoardingModel(
      1,
      AppImages.onBoardingImage1,
      'سبيل – دليلك المتكامل لتعزيز إيمانك وحياتك اليومية',
    ),
    OnBoardingModel(
      2,
      AppImages.onBoardingImage2,
      'تعرف على مواقيت الصلاة واتجه نحو القبلة بدقة',
    ),
    OnBoardingModel(
      3, AppImages.onBoardingImage3,
      'عش يومك مع الأذكار، الأدعية، والسبحة الرقمية',
    ),
  ];
  var boardController = PageController();
  bool isLast = false;
  bool isMid = false;
  double value = 0.333;

  int count = 0;

  void submit() {
    SharedPrefHelper.setData('onboarding', true).then((value) {
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.homeScreen, (route) => false);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dimGray,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                AppImages.islamicPattern,
              ),fit: BoxFit.cover)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 25.h, left: 10.w,right: 10.w),
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                      onPressed: submit,
                      child:
                          Text('تخطي', style: AppTextStyles.font18AmiriWhite)),
                ),
              ),
              Image.asset(AppImages.appLogo,height: 90.h,),
              SizedBox(
                height: 520.h,
                child: PageView.builder(
                  controller: boardController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      count = index;
                      value = (index + 1) / model.length; // Updates progress
                      isMid = index == 1; // Tracks the second page
                      isLast =
                          index == model.length - 1; // Tracks the last page
                    });
                  },
                  itemBuilder: (context, index) =>
                      onBoardingItem(model[index], context),
                  itemCount: model.length,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Row(
                  children: [
                    SmoothPageIndicator(
                      controller: boardController,
                      count: model.length,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 20,
                        dotColor: AppColors.mintGreen,
                        activeDotColor: AppColors.ebony,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (value == 1) {
                          submit();
                        }
                        boardController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        height: 55.h,
                        width: 55.w,
                        decoration: const ShapeDecoration(
                          color: AppColors.ebony,
                          shape: OvalBorder(),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 20.r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
