//
//  MyTextView.swift
//  Binding
//
//  Created by 곽현우 on 7/8/24.
//

import SwiftUI

struct MyTextView: View{
    
    @Binding
    //private로 안 하는 이유 - 외부에서 접근해야 하기 때문에 var를 이용해서 접근
    var isActivated : Bool
    
    //여기 제네릭을 이용해 Bool의 값을 받는데 이는 데이터 양방향 통신을 위해 사용
    //외부에서 값을 전달받을때 상태가 변하면 자동으로 업데이트 하기 위함(코드 유연성)
    init(isActivated: Binding<Bool> =
        .constant(false)) {
            _isActivated = isActivated
        }
    
    //@State 값의 변화 감지 -> 뷰에 적용하기
    @State
    private var index: Int = 0
    
    //배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            //텍스트 부분으로 isActivated의 값을 넣음으로 true, false가 반환된다.
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.top)
        .onTapGesture {
            print("배경아이템이 클릭 됨")
            
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider{
    static var previews: some View{
        MyTextView()
    }
}
