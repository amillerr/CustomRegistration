//
//  LoginView.swift
//  CustomRegistration
//
//  Created by Artem Axenov on 2022-10-04.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State var isLinkActive =  false
    
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .topLeading) {
                VStack {
                    VStack (spacing: 40) {
                        ZStack {
                            Ellipse()
                                .frame(width: 510, height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(Color("color2"))
                                .padding(.top, -200)
                            
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(Color("color1"))
                                .padding(.top, -200)
                            
                            Text("Welcome \nBack")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                        }
                        
                        VStack (spacing: 30) {
                            
                            VStack (spacing: 30) {
                                CustomTextField(placeHolder: "Email", imageName: "envelope", bColor: "textColor1", tOpacity: 0.6, value: $email)
                                CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "textColor1", tOpacity: 0.6, value: $password)
                            }
                            
                            VStack (alignment: .trailing) {
                                Text("Forgot Password")
                                    .fontWeight(.medium)
                                
                                NavigationLink(destination: SignupView(), isActive: $isLinkActive) {
                                    Button(action: {
                                        self.isLinkActive = true
                                    }, label: {
                                        CustomButton(title: "SIGN IN", bgColor: "color1")
                                    })
                                }
                            }.padding(.horizontal, 20)
                            
                            HStack {
                                Button(action: {}, label: {
                                    Image("facebook")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                })
                                
                                Spacer()
                                
                                Button(action: {}, label: {
                                    Image("google")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                })
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Don't have an account?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        
                        Button(action: {}, label: {
                            Text("SIGN UP")
                                .font(.system(size: 18))
                                .foregroundColor(Color("color1"))
                                .fontWeight(.bold)
                        })
                    }
                    .frame(height: 60)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color("color2"))
                    .ignoresSafeArea()
                }
                TopBarView()
                
            }
            
            .edgesIgnoringSafeArea(.bottom)
        }
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
