import 'package:clean_architecture_with_mvvm/presentation/utils/assets_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/color.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/strings_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  static List<SliderObject> _getSliderData() => [
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
        backgroundColor: ColorManager.whiteColor,
        elevation: AppSize.s1_5,
        systemOverlayStyle:  SystemUiOverlayStyle(
          statusBarColor: ColorManager.whiteColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        color: ColorManager.whiteColor,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.skip,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            _getBottomSheetWidget(_list),
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget(List<SliderObject> sliderList) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: const Icon(Icons.keyboard_arrow_left_outlined),
            ),
            onTap: () {
              // go to previous slide
              _pageController.animateToPage(_getPreviousIndex(), duration: Duration(milliseconds: DurationConstant.d300),
                  curve: Curves.bounceInOut);
            },
          ),
        ),
        Row(
          children: [
            for (int i = 0; i < sliderList.length; i++)
              Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: _getProperCircle(i),
              )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: const Icon(Icons.keyboard_arrow_right_outlined),
            ),
            onTap: () {
              // go to next slide
              _pageController.animateToPage(_getNextIndex(), duration: Duration(milliseconds: DurationConstant.d300),
                  curve: Curves.bounceInOut);
            },
          ),
        )
      ],
    );
  }

  int _getPreviousIndex(){
    int previousIndex = _currentIndex --;
    if(previousIndex == -1){
      _currentIndex = _list.length -1;
    }
    return _currentIndex;
  }
  int _getNextIndex(){
    int nextIndex = _currentIndex ++;
    if(nextIndex  >= _list.length){
      _currentIndex = 0;
    }
    return _currentIndex;
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return const Icon(Icons.blur_circular);
    } else {
      return const Icon(Icons.circle);
    }
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(_sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  final String title;
  final String subTitle;
  final String image;

  const SliderObject(this.title, this.subTitle, this.image);
}

void main() {
  runApp(const MaterialApp(
    home: OnBoardingView(),
  ));
}
