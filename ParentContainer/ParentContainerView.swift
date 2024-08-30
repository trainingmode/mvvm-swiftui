// Custom Parent Container View
//
// An example showcasing how to use a custom component, in
// this case, our ButtonStackView.
//
// This is a parent container View that houses our custom
// ButtonStackView component and a Text View.
//
// Note while only UI code is shown here, a ViewModel is
// *created* and passed to the ButtonStackView. The ViewModel
// is passed to the ButtonStackView to control the message
// displayed in the Text View.

import SwiftUI

struct ContentView: View {
    // ViewModel for the ButtonStackView Container
    @ObservedObject var viewModel: ButtonStackViewModel = ButtonStackViewModel()
    
    // Style Properties (Notice All Values are Abstracted into Variables)
    var messageFont: Font = .title2
    var messagePadding: CGFloat = 16
    
    // Parent Container View, Housing a ButtonStackView and a Text View
    var body: some View {
        VStack {
            // Reused ButtonStackView Component
            // Notice the viewModel is Passed to the ButtonStackView
            ButtonStackView(viewModel: viewModel)

            // The Text Displayed is Controlled by the ViewModel
            Text(viewModel.message)
                .font(messageFont)
                .padding(messagePadding)
        }
    }
}