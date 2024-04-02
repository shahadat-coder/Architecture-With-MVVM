import 'package:clean_architecture_with_mvvm/presentation/utils/assets_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/color.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/strings_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  List<SliderObject> _getSliderData() => [
    SliderObject(AppStrings.onBoardingSubTitle1, AppStrings.onBoardingSubTitle1, ImageAssets.onBoarding1),
    SliderObject(AppStrings.onBoardingSubTitle2, AppStrings.onBoardingSubTitle2, ImageAssets.onBoarding2),
    SliderObject(AppStrings.onBoardingSubTitle3, AppStrings.onBoardingSubTitle3, ImageAssets.onBoarding3),
    SliderObject(AppStrings.onBoardingSubTitle4, AppStrings.onBoardingSubTitle4, ImageAssets.onBoarding4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.whiteColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context,index) {

      },

      ),
    );
  }
}
class OnBoardingPage extends StatelessWidget {
  SliderObject _sliderObject;
  OnBoardingPage(this._sliderObject,{Key ? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: AppSize.s40,),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(_sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(_sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        )
      ],
    );
  }
}

  class SliderObject{
    String title;
    String subTitle;
    String image;

    SliderObject(this.title, this.subTitle, this.image);
  }

