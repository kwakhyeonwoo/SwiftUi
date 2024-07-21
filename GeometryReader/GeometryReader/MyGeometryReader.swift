//
//  GeometryReader.swift
//  GeometryReader
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI

struct MyGeometryReader : View {
    var body: some View{
        
        GeometryReader{ geometryReader in
            
            HStack(spacing: 0){
                
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    //geometryReader값이 들어올 때 3으로 나눈 33%의 값을 가지겠다. 모든 기기에서
                    .frame(width: geometryReader.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(Color.white)
//                    .background(Color.purple)
            }.background(Color.yellow)
                .frame(width: geometryReader.size.width,
                       height: geometryReader.size.height,
                       alignment: .center
                )

            
        }.background(Color.black)
        
        
        
        
    }
}

#Preview {
    MyGeometryReader()
}
