//
//  MyVstackView.swift
//  Binding
//
//  Created by 곽현우 on 7/8/24.
//

import SwiftUI

struct MyVStackView: View{
    
    //데이터 연동시킬
    @Binding
    //private로 안 하는 이유 - 외부에서 접근해야 하기 때문에 var를 이용해서 접근
    var isActivated : Bool
    
    init(isActivated: Binding<Bool> =
        .constant(false)) {
            _isActivated = isActivated
        }
    var body: some View{
        VStack {
            
            Text("1")
                .font(.system(size: 40))
            Text("2")
                .font(.system(size: 60))
            Text("3")
                .font(.system(size: 80))
        }//Hstack
        //background에 삼항 연산자를 이용해서 true, false일때 값을 다르게 부여
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
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
