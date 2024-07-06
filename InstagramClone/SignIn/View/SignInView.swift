//
//  SignInView.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 03/07/24.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel :LoginViewModel
    
    @State var email = ""
    @State var senha = ""
    var body: some View {
        ZStack{
            NavigationStack{
                ScrollView{
                    VStack(alignment:.center,spacing: 30){
                        Image("logo").resizable().scaledToFit().frame(width: 200,height: 200)
                        
                        TextField("Telefone, nome de usuario ou email",text: $email).keyboardType(.emailAddress).padding(.horizontal,8)
                        TextField("Senha",text:$senha).padding(.horizontal,8)
                        HStack(){
                            Spacer()
                            Button("Esqueceu a senha?") {
                                print("Button Tapped!")
                            }.padding()
                                .font(.system(size: 12, weight: Font.Weight.bold))
                                .foregroundColor(Color.blue)
                                .buttonStyle(PlainButtonStyle())
                        }
                        LoadingButtonView(action:{
                            
                        } , disabled: email.isEmpty || senha.isEmpty, text: "Entrar").padding(.horizontal,8)
                        ZStack{
                            
                            Divider().background(.gray).padding()
                            Text("ou").background(.white)
                        }
                        Text("Continuar com facebook").foregroundStyle(Color.blue)
                        Spacer().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        HStack{
                            Text("Nao tem uma conta?").font(Font.system(size: 15))
                            NavigationLink("Cadastre-se", destination: {
                                viewModel.signUpView()
                            }).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SignInView(viewModel: LoginViewModel())
}
