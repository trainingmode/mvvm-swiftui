// Custom Button Stack View
//
// Note while only UI code is shown here, a public ViewModel is
// *passed in* to the ButtonStackView. The ViewModel would be
// instantiated in a parent View that uses the ButtonStackView.
//
// This ViewModel contains logic used to control a message
// that can be displayed
// (see: /ButtonStack/ButtonStackViewModel public `message` var).
//
// The message from the ViewModel can be displayed by a
// parent View that uses the ButtonStackView.
//
// The ButtonStackView is a reusable component that can be
// used in any SwiftUI view
// (see: /ParentContainer/ParentContainerView.swift).

import SwiftUI

struct ButtonStackView: View {
    // ViewModel for the ButtonStackView Container
    @ObservedObject var viewModel: ButtonStackViewModel

    // Style Properties (Notice All Values are Abstracted into Variables)
    var acceptTitle: String = "Accept"
    var cancelTitle: String = "Cancel"
    var acceptBackgroundColor: Color = .green
    var cancelBackgroundColor: Color = .red
    var hStackSpacing: CGFloat = 20
    var paddingValue: CGFloat = 16
    
    var body: some View {
        HStack(spacing: hStackSpacing) {
            // ButtonCustomView for Accept Action
            ButtonCustomView(title: acceptTitle, action: {
                viewModel.acceptAction()
            }, backgroundColor: acceptBackgroundColor)

            // ButtonCustomView for Cancel Action
            ButtonCustomView(title: cancelTitle, action: {
                viewModel.cancelAction()
            }, backgroundColor: cancelBackgroundColor)
        }
        .padding(paddingValue)
    }
}