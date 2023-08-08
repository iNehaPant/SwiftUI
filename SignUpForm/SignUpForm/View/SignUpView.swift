//
//  ContentView.swift
//  SignUpForm
//
//  Created by Neha Pant on 05/08/2023.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var signUpVm: SignUPViewModel
    @State private var navigateToDetailScreen = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Group {
                    TextField("Enter First Name", text: $signUpVm.firstNameField)
                        .textFieldStyle(.roundedBorder)
                    TextField("Enter Lase Name", text: $signUpVm.lastNameField)
                        .textFieldStyle(.roundedBorder)
                    
                    
                    TextField("Enter Email Id", text: $signUpVm.emailIdField)
                        .textFieldStyle(.roundedBorder)
                    
                    
                    TextField("Enter Password", text: $signUpVm.passwordField)
                        .textFieldStyle(.roundedBorder)
                    
                    
                    TextField("Enter Confirm Password", text: $signUpVm.confirmPasswordField)
                        .textFieldStyle(.roundedBorder)
                    
                    
                }
                
                Button("Done") {
                    navigateToDetailScreen = true
                }
                .buttonBorderShape(.roundedRectangle)
                .background(Color.black)
                .foregroundColor(Color.white)
                .disabled(!signUpVm.isSignUpButtonEnabled)
                
                NavigationLink(destination: DetailView(),
                               isActive: $navigateToDetailScreen) {
                    EmptyView()
                }
                Spacer()
                Spacer()
            }
            .padding()
            .onAppear {
            }
        }
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(signUpVm: SignUPViewModel())
    }
}
