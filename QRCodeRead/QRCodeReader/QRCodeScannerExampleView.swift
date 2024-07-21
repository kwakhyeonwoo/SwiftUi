//
//  QRCodeScannerExampleView.swift
//  QRCodeReader
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI

struct QRCodeScannerExampleView : View {
    @State var isPresentingScanner = false
    @State var scannedCode : String?
    var body: some View{
        
        ZStack{
            if self.scannedCode != nil{
                MyWebView(urlToLoad: self.scannedCode!)
            } else {
                MyWebView(urlToLoad: "https://www.naver.com")
            }
            
            VStack{
                
                Spacer()
                
                Button(action: {
                    self.isPresentingScanner = true
                }){
                    Text("로또 번호 확인")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(12)
                        //겹쳐지는 뷰
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 10)
                        )
                    
                }
                .sheet(isPresented:
                        $isPresentingScanner) {
                    self.scannerSheet
                }
                Spacer().frame(height: 30)
            }
        }
            
        
    }
    
    var scannerSheet : some View {
        
        ZStack {
            CodeScannerView (
                codeTypes : [.qr],
                completion: {result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
            QRCodeGuideLineView()
        }
    }
}

#Preview {
    QRCodeScannerExampleView()
}
