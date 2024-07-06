//
//  SplashView.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 06/07/24.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var viewModel : SplashViewModel
    
    var body: some View {
        Group{
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .error(let msg):
                loadingView(error: msg)
            case .goToSignInScreen:
                viewModel.signInView()
            case .goToHomeScreen:
                EmptyView()
            }
        }.onAppear(perform: {
            viewModel.onAppear()
            
        }) // toda vez que a tela aparecer  ele executa
    }
}

extension SplashView {
    func loadingView(error:String? = nil) -> some View{
        ZStack{
            VStack(alignment:.center){
                Image("icon").resizable().scaledToFit().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 80)
                    .padding(20)
                    .ignoresSafeArea()
            }
            VStack{
                Spacer()
                Text("From")
                Image("meta").resizable().scaledToFit().frame(width: 100)
                
                
                if let error = error{
                    Text("")
                        .alert(isPresented: .constant(true), content: {
                            Alert(title: Text("Instagram"), message: Text(error),dismissButton: .default(Text("Ok"), action: {
                                // faz alguma coisa
                            }))
                        })
                }
            }
            
        }
    }
}

#Preview {
    SplashView(viewModel: SplashViewModel())
}

