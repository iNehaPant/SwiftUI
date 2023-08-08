//
//  SignUpViewModel.swift
//  SignUpForm
//
//  Created by Neha Pant on 08/08/2023.
//

import Foundation
import Combine

class SignUPViewModel: ObservableObject {
    @Published var firstNameField: String = ""
    @Published var lastNameField: String = ""
    @Published var emailIdField: String = ""
    @Published var passwordField: String = ""
    @Published var confirmPasswordField: String = ""

    @Published var isSignUpButtonEnabled: Bool = false
    private var cancellables = Set<AnyCancellable>()

    init() {
        validateSignUpForm()
    }
    
    func validateSignUpForm() {
        Publishers.CombineLatest4($firstNameField, $lastNameField, $emailIdField, $passwordField)
            .map{ firstNameField, lastNameField, emailIdField, passwordField in
                return !firstNameField.isEmpty &&
                       !lastNameField.isEmpty &&
                       !emailIdField.isEmpty &&
                       !passwordField.isEmpty
            }
            .assign(to: \.isSignUpButtonEnabled, on: self)
            .store(in: &cancellables)
    }

}

