//
//  MyProfileView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct MyProfileView: View {
    
    @State private var userID: String = ""
    @State private var userPW: String = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    TextField("아이디를 입력하세요", text: $userID)
                        .textFieldStyle(.roundedBorder)
                    SecureField("비밀번호를 입력하세요", text: $userPW)
                        .textFieldStyle(.roundedBorder)
                }
                Button {
                    
                } label : {
                    LoginButton()
                }
            }
            .frame(width: 300, height: 100)
            HStack {
                NavigationLink(destination: EmptyView()) {
                    Text("아이디 찾기")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("비밀번호 찾기")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("회원가입")
                }
            }
            .foregroundColor(.gray)
            
            Image("social")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }

    }
}

struct LoginButton: View {
    var body: some View {
        VStack {
            Text("로그인")
                .foregroundColor(.white)
                .padding()
        }
        .background(Color(Color(UIColor.pointColor!) as! CGColor))
        .cornerRadius(20)
        .frame(height: 150)
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
