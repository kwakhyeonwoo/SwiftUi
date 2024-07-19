//
//  CircleImageView.swift
//  Image
//
//  Created by 곽현우 on 7/19/24.
//

import SwiftUI

struct CircleImageView : View{
    var body: some View{
//         Image(systemName: "location.fill")
//            .font(.system(size: 100))
        Image("myImage")
            //해당 이미지 크기에 맞게 설정
            .resizable()
            //비율 설정
            .scaledToFill()
            .frame(width:300, height: 300)
            //모양을 바꾸겠다 (원형으로)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(Circle()
                .foregroundColor(.black)
                //어둡게 하기
                .opacity(0.2)
            )
            //위에 원형으로 추가하겠다. stroke() - 윤곽을 추가한다
            .overlay(
                Circle().stroke(Color.blue, 
                    lineWidth: 10)
                .padding()
            )
            .overlay(
                Circle().stroke(Color.red,
                    lineWidth: 10)
                .padding(30)
            )
            .overlay(
                Text("안녕하세요")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 30))
            )
//            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    CircleImageView()
}
