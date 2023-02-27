//
//  LoginView.swift
//  4 Homework SwiftUI
//
//  Created by Vladislav Green on 2/27/23.
//

import SwiftUI

struct LoginView: View {
    @Binding var logged: Bool
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        ZStack {
            AngularGradient(
                gradient: Gradient(colors: [.white, .white, .white, .gray]),
                center: .bottomTrailing,
                angle: (Angle(radians:  0))
            )
            .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding(.top, 120)
                
                VStack(spacing: -0.5) {
                    TextField("Login", text: $login)
                        .modifier(TextFielder())
                    SecureField("Password", text: $password)
                        .modifier(TextFielder())
                }
                .cornerRadius(12)
                .padding(.top, 60)
                .padding(16)
                
                GeometryReader { geometry in
                    Button(action: { self.logged = true}) {
                            
                        ZStack {
                            Image("logo")
                                .padding(.top, 500)
                            Text("LogIn")
                                .frame(height: 50)
                                .foregroundColor(.white)
                        }
                    }
    //                .frame(maxWidth: .infinity, maxHeight: 50)
                    .frame(width: geometry.size.width - 32, height: 50)
                    .cornerRadius(12)
                    .padding(16)
                    
                    Spacer()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(logged: .constant(false))
    }
}
