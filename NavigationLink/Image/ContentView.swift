//
//  ContentView.swift
//  Image
//
//  Created by 곽현우 on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("myImage")
                    .frame(height: 10)
                    .scaledToFill()
                
                CircleImageView()
                
                HStack{
                    NavigationLink(destination: MyWebView(url: "https://www.youtube.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("유튜브로 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: MyWebView(url: "https://www.kakao.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("카톡으로 들어가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(15)
                    }
                }
                .padding(50)
            }
        }
    }
}

#Preview {
    ContentView()
}
