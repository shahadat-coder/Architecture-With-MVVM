import 'package:clean_architecture_with_mvvm/presentation/base/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // Constructor
  OnBoardingViewModel();

  // Stream controllers or other necessary variables

  @override
  void dispose() {
    // Dispose any resources here
  }

  @override
  void start() {
    // Implement start functionality here
  }

  @override
  void goNext() {
    // Implement goNext functionality here
  }

  @override
  void goPrevious() {
    // Implement goPrevious functionality here
  }

  @override
  void onPageChanged(int index) {
    // Implement onPageChanged functionality here
  }
}

// Inputs: Orders that the view model will receive from the view.
abstract class OnBoardingViewModelInputs {
  void goNext(); // When the user clicks on the right arrow or swipes left.
  void goPrevious(); // When the user clicks on the left arrow or swipes right.
  void onPageChanged(int index);
}

// Outputs: Data or results that will be sent from the view model to the view.
abstract class OnBoardingViewModelOutputs {}
