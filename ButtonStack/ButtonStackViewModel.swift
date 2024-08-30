// Custom Button Stack ViewModel
//
// The functionality for the ButtonStackView is controlled
// by this ButtonStackViewModel.
//
// If an action is performed on the Accept or Cancel button
// Views, the message property of this ViewModel is updated.
//
// Any parent View that uses the ButtonStackView can observe
// the message property to update its own UI.

import Combine

class ButtonStackViewModel: ObservableObject {
    // Published Message to be Displayed
    @Published var message: String = ""
    
    // Example Model/Data
    var acceptMessage: String = "Accepted"
    var cancelMessage: String = "Canceled"
    
    // Functionality for the Accept Button
    func acceptAction() {
        message = acceptMessage
    }
    
    // Functionality for the Cancel Button
    func cancelAction() {
        message = cancelMessage
    }
}