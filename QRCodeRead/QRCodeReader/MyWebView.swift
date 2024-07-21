//
//  MyWebView.swift
//  QRCodeReader
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI
import WebKit

// uikit 의 uiview 를 사용할수 있도록 한다.
// UIViewControllerRepresentable

struct MyWebView: UIViewRepresentable {
   
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
        
    }
    
    // 업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
           
       }
    
}

//#Preview{
//    MyWebView(urlToLoad: "https://www.naver.com")
//}
struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
