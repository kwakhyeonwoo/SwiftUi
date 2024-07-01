//
//  ContentView.swift
//  Swift concept
//
//  Created by 곽현우 on 6/24/24.
//

import SwiftUI

//Hashable - 리스트 사용 가능
struct Todo : Comparable, Hashable{
    
    static func < (lhs : Todo, rhs: Todo) -> Bool {
        return lhs.id < rhs.id
    }
    
    var id : Int
    var title : String
}

struct ContentView : View {
    
    //todos를 [Todo]의 값이 들어가는 빈 배열로 초기화
    @State var todos : [Todo] = []
    
    @State var isAscending : Bool = true
    
//    @State var toggleTitle : String = "오름차순"
    
    //클로저로 받기
    var getToggleTitle : (Bool) -> String = { isAscending in
        return isAscending ? "오름차순" : "내림차순"
    }
    var body: some View {
        VStack{
            //$를 통해 isAscending 바인딩
            Toggle(getToggleTitle(isAscending), isOn: $isAscending)
                .padding(.horizontal, 20)
            listContent
        }
        //changedValue의 값을 매개변수로 넣음으로 true, false를 감지
        //perform이 상태 변화시 동작하는 행동
        .onChange(of: isAscending, perform: { (changedValue: Bool) in
            print("changedValue: \(changedValue)")
//            toggleTitle = changedValue ? "오름차순" : "내림차순"
            //changedValue의 값을 Bool을 통해 true면 오름차순으로 정렬
            if changedValue {
                self.todos.sort()
            } else{
                //changedValue의 값이 false면 내림차순으로 정렬
                self.todos.sort(by: >)
            }
        })
        //View가 나타날때 해당 코드 로드
        .onAppear(perform: {
            self.todos = self.getDummyTodo()
        })
    }
}

//Mark - 뷰
//ContentView 확장
extension ContentView {
    var listContent : some View{
        //List정렬로 id값은 자기 자신으로 받음
        List{
            ForEach(todos, id: \.self) { aTodo in
                Text(aTodo.title)
            }
        }
    }
}

//Mark - Helper
extension ContentView {
    func getDummyTodo() -> [Todo]{
        print("getDummyTodo() called")
        var todos : [Todo] = []
        
        for i in 1 ... 100 {
            let newTodo = Todo(id: i, title: "\(i) - 타이틀")
            //todos에 append를 통해 내용 삽입
            todos.append(newTodo)
        }
        return todos
    }
}

struct ContentView_PreViews:
    PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
