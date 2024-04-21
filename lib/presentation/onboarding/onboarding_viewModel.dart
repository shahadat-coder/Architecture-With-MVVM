import 'package:clean_architecture_with_mvvm/presentation/base/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {

  // Constructor
  OnBoardingViewModel();

  // Stream controllers or other necessary variables

  @override
  void dispose() {
    // Dispose any resources here
    super.dispose(); // don't forget to call super.dispose()
  }

  @override
  void start() {
    // Implement start functionality here
    // For example, if you have initial setup logic, you can place it here.
  }

  @override
  void goNext() {
    // Implement goNext functionality here
    // This method should handle navigating to the next onboarding page.
    // Example:
    // navigationService.navigateToNextPage();
  }

  @override
  void goPrevious() {
    // Implement goPrevious functionality here
    // This method should handle navigating to the previous onboarding page.
    // Example:
    // navigationService.navigateToPreviousPage();
  }

  @override
  void onPageChanged(int index) {
    // Implement onPageChanged functionality here
    // This method should handle updating the view model's state based on the current page index.
    // Example:
    // currentIndex = index;
    // notifyListeners(); // Notify the view about the change if needed.
  }
}

// Inputs: Orders that the view model will receive from the view.
abstract class OnBoardingViewModelInputs {
  void goNext(); // When the user clicks on the right arrow or swipes left.
  void goPrevious(); // When the user clicks on the left arrow or swipes right
