//
//  MyCard.swift
//  ManyStackBar
//
//  Created by 곽현우 on 7/20/24.
//

import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    //뷰가 들어가는 부분
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
//                .frame(width: 100, height: 100)
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
//                Rectangle().frame(height: 0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }

            
        }
        //패딩을 주고 색 설정 해야함
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

#Preview {
    MyCard(icon: "book.fill", title: "책읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
}

