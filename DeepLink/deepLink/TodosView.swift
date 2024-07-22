//
//  TodosView.swift
//  deepLink
//
//  Created by 곽현우 on 7/22/24.
//

import Foundation
import SwiftUI

struct TodosView : View {
    
    @State var todoItems = [TodoItem]()
    @State var activeUUID: UUID?
    
    init(){
        _todoItems = State(initialValue: prepareData())
    }
    
    var body: some View{
        NavigationView {
            List(todoItems){ todoItem in
                
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    tag: todoItem.id,
                    selection: $activeUUID,
                    label: {
                        Text("\(todoItem.title)")
                    })
            }
            .navigationTitle("할 일 목록")
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage{
                    
                }
            })
        }
    }
}

#Preview {
    TodosView()
}
