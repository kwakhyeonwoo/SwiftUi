//
//  ContentView.swift
//  Text
//
//  Created by 곽현우 on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat : DateFormatter = {
       let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .short
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                .font(.system(.body, design: .rounded))
//                .font(.system(size: <#T##CGFloat#>))
                .fontWeight(.medium)
                //텍스트들을 왼쪽 정렬을 시키겠다. (중간 - .center, 오른쪽 - .trailing
                .multilineTextAlignment(.leading)
                //멀티 줄을 생성시키겠다. 제한이 없다
                .lineLimit(nil)
                //글자와 글자 사이의 간격
                .lineSpacing(20)
                .truncationMode(.tail)
                //그림자 효과주기
                .shadow(color: .white, radius: 1.5, x: 10, y: 10)
            
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding(30)
                .background(Color.blue)
                .cornerRadius(20)
            Text("안녕하세요")
                .background(Color.gray)
                //백그라운드 텍스트에서 텍스트만 값을 변경하고 싶다 - foregroundColor(.color)
                .foregroundColor(.white)
            
            Text("오늘의 날짜는 : \(today, formatter: ContentView.dateFormat)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
