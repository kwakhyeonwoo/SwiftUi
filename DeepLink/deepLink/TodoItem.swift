//
//  TodoItem.swift
//  deepLink
//
//  Created by 곽현우 on 7/22/24.
//

import Foundation
import SwiftUI

struct TodoItem : Identifiable, Hashable{
    var id : UUID
    var title : String
}

func prepareData() -> [TodoItem]{
    print("prepareData() called")
    
    var newList = [TodoItem]()
    
    for i in 1...20 {
        let newTodo = TodoItem(id: UUID(), title: "내 할 일 : \(i)")
        print("newTodo.id = \(newTodo.id), title: \(newTodo.title)")
        newList.append(newTodo)
    }
    return newList
}
