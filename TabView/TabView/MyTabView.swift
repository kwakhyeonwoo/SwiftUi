//
//  MyTabView.swift
//  TabView
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI

struct MyTabView : View {
    var body: some View{
        TabView{
            //보여질 화면
            Text("1번")
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            Text("2번")
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(.red)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            Text("3번")
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }
    }
}

#Preview {
    MyTabView()
}
