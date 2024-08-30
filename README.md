# **MVVM SwiftUI Example**

This an example demonstrating MVVM patterns in SwiftUI.

We create a simple component containing two buttons placed horizontally.

> _Note: It is recommended to read the code first._

> _Note: The following explanation is provided as complementary information to the code._

## Button

The `ButtonCustom` is a custom View, only containing UI code. This makes each part of the UI a separate component.

## ButtonStack

The `ButtonStack` is a custom component that contains two buttons placed horizontally.

The `ButtonStack` provides both a View & ViewModel. The ViewModel is responsible for handling the button actions, as well as the button state.

The ViewModel, however, is **not** instantiated within the `ButtonStack` view itself. Instead, the ViewModel is passed to the `ButtonStack` as a parameter. This allows the View to be developed, refactored, & tested independently of the ViewModel.

The `ButtonStackView` is responsible for creating the button Views, and passing the button state to the buttons.

The `ButtonStackViewModel` is responsible for handling the button actions, and updating the button state.

## ParentContainer

To demonstrate the use of the custom `ButtonStack` component, we create a `ParentContainer` View that contains the `ButtonStack` and a `Text` View.

The `ParentContainer` is responsible for instantiating the `ButtonStackViewModel`, and passing it to the `ButtonStackView`.

The `ButtonStackViewModel` contains the button state, and the actions to update the button state. The ViewModel exposes a `message` property that is updated when the button state changes.

The `ParentContainer` displays the `message` property from the `ButtonStackViewModel` in a `Text` view.

No other functionality is added to the `ParentContainer` View, as the `ButtonStack` component is self-contained. This means the `ParentContainer` only provides a View, without a ViewModel.
