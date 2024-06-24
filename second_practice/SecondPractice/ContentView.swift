//
//  ContentView.swift
//  SecondPractice
//
//  Created by 곽현우 on 6/23/24.
//

import SwiftUI

struct ContentView: View {
    
    //@State 값의 변화 감지 -> 뷰에 적용하기
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    MyVStackView()
                    MyVStackView()
                    MyVStackView()
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.blue)
                //탭 제스쳐 추가
                .onTapGesture {
                    print("ㅁㄴㅇ")
                    //애니메이션 추가
                    withAnimation{
                        //toggle() true면 false, false면 true
                        self.isActivated.toggle()
                    }
                }
                
                //네비게이션 버튼(링크)
                NavigationLink(destination: MyTextView() ){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                } .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
