//
//  ContentView.swift
//  practice_App
//
//  Created by 곽현우 on 6/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
            MyVStackView()
        }//VStack
        
        .padding(10)
        .background(Color.green)
    }
    
}

#Preview {
    ContentView()
}
