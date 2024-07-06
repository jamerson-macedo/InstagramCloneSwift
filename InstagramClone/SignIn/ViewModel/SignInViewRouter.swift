//
//  SignInViewRouter.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 06/07/24.
//

import SwiftUI
import Combine
enum SignInViewRouter{
    static func makeHomeView() -> some View{
        
        return EmptyView()
        
    }
    static func makeSignUpView() -> some View{
        
        return SignUpView()
    }
    
}
