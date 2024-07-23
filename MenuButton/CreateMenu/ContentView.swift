//
//  ContentView.swift
//  CreateMenu
//
//  Created by 곽현우 on 7/23/24.
//

import SwiftUI

let myPets = ["강아지", "고양이", "새"]

struct ContentView: View {
    
    @State private var shouldShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size: 60))
                    .bold()
                Text("우측 상단의 버튼을 눌러주세요 ")
                    .font(.title2)
                    .fontWeight(.black)
                Spacer()
                Spacer()
            }
                .padding()
                .navigationTitle("하이요")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction,
                        content: {
                        //메뉴는 VStack같은 개념으로 됨
                        Menu{
                            
                            Button(action: {
                                print("오늘도 코딩 버튼클릭")
                                shouldShowAlert = true
                                myText = "오늘도 빡코딩"
                            }, label: {
                                Label("오늘도 코딩", systemImage: "flame.fill")
                            })
                            
                            //멀티 트레일링 클로저
                            Button {
                                print("집에서 쉬기 버튼클릭")
                                shouldShowAlert = true
                                myText = "오늘은 집에서 쉬기"
                            } label: {
                                Label("집에서 쉬기", systemImage: "house.fill")
                            }
                            
                            Section {
                                //멀티 트레일링 클로저
                                Button {
                                } label: {
                                    Label("새 파일 만들기", systemImage: "doc")
                                }
                                
                                Button {
                                } label: {
                                    Label("새 폴더 만들기", systemImage: "folder")
                                }
                            }
                            
                            Section {
                                Button {
                                } label: {
                                    Label("파일 모두 삭제하기", systemImage: "trash")
                                }
                            }
                            
                            Picker(selection: $selected, label:
                                    Text("애완동물 선택")){
                                ForEach(myPets.indices, id: \.self, content: { index in
                                    Text("\(myPets[index])").tag(index)
                                })
                            }
                            
                        } label: {
                            Circle().foregroundColor(Color.init(Color.purple))
                                .frame(width: 50, height: 50)
                                .overlay(Label("더보기", systemImage: "ellipsis")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                )
                        }//메뉴 부분
                    })
                })//toolbar 부분
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
                })
        }
    }
}

#Preview {
    ContentView()
}
