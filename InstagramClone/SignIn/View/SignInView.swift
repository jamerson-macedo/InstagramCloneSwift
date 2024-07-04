//
//  SignInView.swift
//  InstagramClone
//
//  Created by Jamerson Macedo on 03/07/24.
//

import SwiftUI

struct SignInView: View {
    
    
    
    @State var email = ""
    @State var senha = ""
    var body: some View {
        ScrollView{
            VStack(alignment:.center,spacing: 30){
                Image("logo").resizable().scaledToFit().frame(width: 200,height: 200)
                
                TextField("Telefone, nome de usuario ou email",text: $email).keyboardType(.emailAddress)
                TextField("Senha",text:$senha)
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
                    
                } , text: "Entrar").padding(.horizontal,8)
                ZStack{
                    
                    Divider().background(.gray).padding()
                    Text("ou").background(.white)
                }
                Text("Continuar com facebook").foregroundStyle(Color.blue)
            }
        }
    }
}

#Preview {
    SignInView()
}
