//
//  MyVstackView.swift
//  SecondPractice
//
//  Created by 곽현우 on 6/23/24.
//

import SwiftUI

struct MyVStackView: View{
    var body: some View{
        VStack {
            
            Text("1")
                .font(.system(size: 40))
            Text("2")
                .font(.system(size: 60))
            Text("3")
                .font(.system(size: 80))
        }//Hstack
        .background(Color.red)
        .padding()
    }
    
}

struct flower : View {
    var body: some View {
        VStack{
            Text("flower")
                .font(.system(size: 20))
            Text("Text Field")
                .font(.title2)
        }
    }
}
