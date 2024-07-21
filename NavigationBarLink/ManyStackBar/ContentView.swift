//
//  ContentView.swift
//  ManyStackBar
//
//  Created by 곽현우 on 7/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing) {
                
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack{
                        
                        NavigationLink(destination: MyList(isNavigationHidden: self.$isNavigationHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                    }
                    .padding(20)
                    
                    Text("현우 할 일")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "book.fill", title: "책읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
                            MyCard(icon: "cart.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        }
                        .padding()
                    }
                }
                
                
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(.trailing, 10)
                    .shadow(radius: 10)
            }//ZStack
            
            .navigationTitle(Text("메인"))
            .navigationBarHidden(self.isNavigationHidden)
            //onAppear - 보여지게 될 때
            .onAppear(){
                self.isNavigationHidden = true
            }
            
        }//NavigationView
    }
}

#Preview {
    ContentView()
}
