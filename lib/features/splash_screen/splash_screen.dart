import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/app_images/app_images.dart';
import 'package:sabeel_app/core/routing/routes_names.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Image _backgroundImage;
  late AnimationController _controller;
  late Animation<double> _imageScaleAnimation;
  late Animation<double> _textSlideAnimation;
  late Animation<double> _textOpacityAnimation;

  @override
  void initState() {
    super.initState();

    _backgroundImage = Image.asset(AppImages.splashBackground);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _imageScaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _textSlideAnimation = Tween<double>(begin: 100.h, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _textOpacityAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_backgroundImage.image, context);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: _backgroundImage.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _imageScaleAnimation.value,
                    child: child,
                  );
                },
                child: Image.asset(
                  AppImages.appLogo,
                  height: 130.h,
                ),
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _textSlideAnimation.value),
                    child: FadeTransition(
                      opacity: _textOpacityAnimation,
                      child: child,
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Text(
                    'طريقك إلى النور والهداية',
                    style: AppTextStyles.font16CairoBlack
                        .copyWith(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
