//
//  MyList.swift
//  ManyStackBar
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI

struct MyList : View {
    
    @Binding var isNavigationHidden : Bool
    
    init(isNavigationHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        
        //Binging이 된 isNavigationHidden의 값을 바꿔줌 
        _isNavigationHidden = isNavigationHidden
    }
    
    var body: some View{
        
//        List{
//            ForEach(1...10, id: \.self){
//                Text("나의 리스트 \($0)")
//            }
//        }
        
        List{
            
            Section(header: Text("오늘 할 일")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.system(size: 30))
                    ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
    //                Text("나의 리스트 \(itemIndex)")
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.green)
                }
            }
            //init초기값이기 때문에 0으로 설정
            //init내부에서 값을 우리가 설정할 수 있음
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("내일 할 일")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.system(size: 30))
            ){
                ForEach(1...3, id: \.self){ itemIndex in
    //                Text("나의 리스트 \(itemIndex)")
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            //리스트에 배경색 바꾸기 그냥 background만 하면 안됨
            .listRowBackground(Color.yellow)
        }
        .listStyle(GroupedListStyle())
        .navigationTitle(Text("내 목록"))
//        .navigationBarHidden(self.isNavigationHidden)
        //onAppear - 보여지게 될 때
        .onAppear(){
            self.isNavigationHidden = false
        }
    }//NavigationView
    
}

#Preview {
    MyList()
}
