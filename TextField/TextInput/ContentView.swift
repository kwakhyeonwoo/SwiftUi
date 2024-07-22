//
//  ContentView.swift
//  TextInput
//
//  Created by 곽현우 on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    
    //inputValue의 자료형은 String이며 기본값은 아무 값이 없는 String으로 정의 - ""로 선언
    @State private var userName: String = ""
    @State private var passwordName : String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            
            ZStack(alignment: .trailing){
                HStack{
                    
                    //TextField앞 부분 - 글자를 입력하기 전 부분, text부분 - 값을 받는 부분
                    //text부분에서 기본값이 Binding이므로 $를 넣어줘야 함
                    TextField("사용자 이름", text: $userName)
                        //첫 단어 대문자 사용
                        .autocapitalization(.none)
                        //단어 작성시 자동완성을 끈다
                        .disableAutocorrection(true)
                        //TextField를 감싸는 뷰
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                Button(action: {
                    self.userName = ""
                }){
                    if (self.userName.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                }
//                .padding(.trailing)
            }
            
            ZStack(alignment: .trailing){
                HStack{
                    SecureField("비밀번호 입력", text: $passwordName)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: {
                    self.passwordName = ""
                }){
                    if(self.passwordName.count > 0){
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                }
            }
            Text("입력한 비번은 : \((passwordName))")
        }.padding(.horizontal, 50)
    }
}

#Preview {
    ContentView()
}
