// Custom Button View
//
// Note only UI view code is shown here.
//
// There is no accompanying ViewModel, as this is only reusable UI code.
//
// A ViewModel would be created if the button was directly tied to a
// single specific feature, such as sending some arbitrary request.
// In this case, the button is a generic component that can be reused.

import SwiftUI

struct ButtonCustomView: View {
    // View Properties
    var title: String
    var action: () -> Void

    // Style Properties (Notice All Values are Abstracted into Variables)
    var backgroundColor: Color
    var font: Font = .headline
    var textColor: Color = .white
    var cornerRadius: CGFloat = 10
    var maxWidth: CGFloat? = .infinity
    var paddingHorizontal: CGFloat = 16
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .font(font)
                .foregroundColor(textColor)
                .padding()
                .frame(maxWidth: maxWidth)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
        // Note: Constants like `.horizontal` are Not Abstracted
        .padding(.horizontal, paddingHorizontal)
    }
}