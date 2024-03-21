import 'package:clean_architecture_with_mvvm/presentation/utils/assets_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/color.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
}
