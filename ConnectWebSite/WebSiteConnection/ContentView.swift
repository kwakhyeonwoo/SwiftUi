//
//  ContentView.swift
//  WebSiteConnection
//
//  Created by 곽현우 on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebView(urlLoad: "https://www.naver.com")
        
        NavigationView{
            VStack{
                //선택시 웹페이지, 다른 메소드로 이동 가능
                NavigationLink(destination:
                    MyWebView(urlLoad: "https://www.naver.com")
                    //전체 화면 보여주기
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("네이버")
                        .font(.system(size: 40))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: 
                    MyWebView(urlLoad: "https://www.notion.so")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("Notion")
                        .font(.system(size: 40))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: 
                    MyWebView(urlLoad: "https://www.google.com")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ){
                    Text("구글")
                        .font(.system(size: 40))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
