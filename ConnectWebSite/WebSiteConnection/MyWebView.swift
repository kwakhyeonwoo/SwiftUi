//
//  MyWebView.swift
//  WebSiteConnection
//
//  Created by 곽현우 on 7/8/24.
//

import SwiftUI
import WebKit

//UiKit에서 UiView 생성하는 것처럼
//내가 UiViewController를 사용하고 싶으면 UiViewControllerRepresentable생성
//UIViewRepresentable을 사용하면 makeUIView, updateUIView를 필수로 사용해야함
struct MyWebView: UIViewRepresentable{
    var urlLoad : String
    //UiView 만들기(실질적으로 우리한테 보여지는 View생성)
    func makeUIView(context: Context) -> WKWebView {
        
        //만약 urlLoad의 값이 없다면 WKWebView()로 반환을 하고
        //값이 있으면 url에 값을 넣어서 언래핑 시킨다
        guard let url = URL(string: self.urlLoad) else{
            return WKWebView()
        }
        
        let webView = WKWebView()
        //현재 옵셔널 되어 있어서 언래핑으로 풀어줘야 함
//        webView.load(URLRequest(url: URL(string: urlLoad)))
        
        //웹뷰 로드
        webView.load(URLRequest(url:url))
        
        //웹뷰 반환
        return webView
    }
    
    
    //Update Ui View 만들기
    //State로 설정헤둔 변수가 바뀔때마다 실행
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}
#Preview {
    MyWebView(urlLoad: "https://www.naver.com")
}

