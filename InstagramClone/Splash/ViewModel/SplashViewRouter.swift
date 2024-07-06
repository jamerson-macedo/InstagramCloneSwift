//
//  SplashViewRouter.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 06/07/24.
//

import Foundation
import SwiftUI
enum SplashViewRouter{
    static func makeSignInView() -> some View{
        let viewmodel = LoginViewModel()
        return SignInView(viewModel:viewmodel)
    }
}
