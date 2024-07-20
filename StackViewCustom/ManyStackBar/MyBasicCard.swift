//
//  MyBasicCard.swift
//  ManyStackBar
//
//  Created by 곽현우 on 7/20/24.
//

import SwiftUI

struct MyBasicCard : View {
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
//                .frame(width: 100, height: 100)
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
//                Rectangle().frame(height: 0)
                Text("유튭 라이브 버닝")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("유튭 라이브 버닝")
                    .foregroundColor(.white)
            }

            
        }
        //패딩을 주고 색 설정 해야함
        .padding(30)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

#Preview {
    MyBasicCard()
}
