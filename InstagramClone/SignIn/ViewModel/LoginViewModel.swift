//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 06/07/24.
//

import Foundation
import Combine
import SwiftUI
class LoginViewModel : ObservableObject{
    
    
    
}
extension LoginViewModel{
    func signUpView()-> some View{
       return SignInViewRouter.makeSignUpView()
    }
}

