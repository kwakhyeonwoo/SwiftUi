//
//  deepLinkApp.swift
//  deepLink
//
//  Created by 곽현우 on 7/22/24.
//

import SwiftUI

@main
struct deepLinkApp: App {
    
    @State var selectedTab = Tabidentifier.todos
    
    var body: some Scene {
        WindowGroup {
            TabView (selection: $selectedTab,
                     content:  {
                TodosView().tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("할일목록")
                    }
                }.tag(Tabidentifier.todos)
                ProfileView().tabItem {
                    VStack{
                        Image(systemName: "person.circle.fill")
                        Text("프로필")
                    }
                }.tag(Tabidentifier.profile)
            })
            .onOpenURL(perform: { url in
                //열려야 하는 url처리
                guard let tabId = url.tabidentifier else { return }
                selectedTab = tabId
            })
            
//            ContentView()
        }
    }
}

struct deepLinkApp_Previews: PreviewProvider {
    static var previews: some View{
        Text("Hello World")
    }
}

//어떤 탭이 선택 되었는지 여부
enum Tabidentifier: Hashable {
    case todos, profile
}

//어떤 페이지를 보여줘야 하는지 여부
enum PageIdentifier : Hashable{
    case todoItem(id: UUID)
}

extension URL{
    //info에서 추가한 딥링크가 들어왔는지 확인
    var isDeepLink : Bool{
        return scheme == "deeplink-swiftui"
    }
    
    //url 들어오는 것으로 어떤 타입의 탭을 보여줘야 하는지 가져오기
    var tabidentifier : Tabidentifier? {
        guard isDeepLink else { return nil }
        
        switch host {
        case "todos":
            return .todos
        case "profile":
            return .profile
        default:
            return nil
        }
    }
    
    var detailPage : PageIdentifier? {
        guard let tabId = tabidentifier,
              pathComponents.count > 1,
        let uuid = UUID(uuidString: pathComponents[1])
        else { return nil }
        
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
}
