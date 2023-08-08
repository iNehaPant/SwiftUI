//
//  SignUpFormApp.swift
//  SignUpForm
//
//  Created by Neha Pant on 05/08/2023.
//

import SwiftUI

@main
struct SignUpFormApp: App {
    var body: some Scene {
        WindowGroup {
            SignUpView(signUpVm: SignUPViewModel())
        }
    }
}
