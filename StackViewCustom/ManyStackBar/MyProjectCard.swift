//
//  MyProjectCard.swift
//  ManyStackBar
//
//  Created by 곽현우 on 7/20/24.
//

import SwiftUI

struct MyProjectCard : View {
    
    @State var shouldShowAlert : Bool = false
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0)
            Text("현우 개인 프로젝트")
                .font(.system(size: 25))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM~ 11 AM")
                .foregroundStyle(.secondary)
                .padding(.bottom, 10)
            HStack{
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(.orange)
                    )
                Image("44")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("59")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    //버튼 동작방식
                    print("확인 버튼이 클릭 되었다.")
                    
                    self.shouldShowAlert = true
                }){
                    //버튼 생김새
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                //버튼 클릭시 알람창 나오게 하기
                .alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다!"))
                }
            }
        }
        //패딩을 주고 색 설정 해야함
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

#Preview {
    MyProjectCard()
}
