//
//  SplashViewModel.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 06/07/24.
//

import Foundation
import SwiftUI
class SplashViewModel : ObservableObject{
    
    @Published var uiState : SplashUiState = .loading
    
    func onAppear(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.uiState = .goToSignInScreen
        }
    }
    
}

extension SplashViewModel{
    func signInView() -> some View{
        return SplashViewRouter.makeSignInView()
    }
    
}
