//
//  MyGeometryReaderVStack.swift
//  GeometryReader
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack : View{
    
    //상태 변화의 index의 자료형은 enum의 Index이고 기본 초기값은 one으로 설정하겠다
    @State var index : Index = .one
    
    var body: some View{
        
        GeometryReader{ geometry in
            VStack{
                
                Button(action: {
                    //버튼 클릭 로직
                    print("1이 클릭되었습니다")
                    withAnimation{
                        self.index = .one
                    }
                }){
                    //버튼 UI
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        //geometryReader값이 들어올 때 3으로 나눈 33%의 값을 가지겠다. 모든 기기에서
                        .frame(width: 100 ,height: geometry.size.width / 3)
                        .padding(.horizontal, self.index == .one ? 100 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                
                Button(action: {
                    //버튼 클릭 로직
                    print("2가 클릭되었습니다")
                    withAnimation{
                        self.index = .two
                    }
                }){
                    //버튼 UI
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        //geometryReader값이 들어올 때 3으로 나눈 33%의 값을 가지겠다. 모든 기기에서
                        .frame(width: 100 ,height: geometry.size.width / 3)
                        .padding(.horizontal, self.index == .two ? 100 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                
                Button(action: {
                    //버튼 클릭 로직
                    print("3이 클릭되었습니다")
                    withAnimation{
                        self.index = .three
                    }
                }){
                    //버튼 UI
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        //geometryReader값이 들어올 때 3으로 나눈 33%의 값을 가지겠다. 모든 기기에서
                        .frame(width: 100 ,height: geometry.size.width / 3)
                        .padding(.horizontal, self.index == .three ? 100 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                }
            }
            .frame(width: geometry.size.width,
                   height: geometry.size.height,
                   alignment: .center
            )
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MyGeometryReaderVStack()
}
