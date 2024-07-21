//
//  QRCodeGuideLineView.swift
//  QRCodeReader
//
//  Created by 곽현우 on 7/21/24.
//

import SwiftUI

struct QRCodeGuideLineView : View {
    var body: some View{
        GeometryReader{ geometryproxy in
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: StrokeStyle(lineWidth: 10, dash: [11]))
                .frame(width: geometryproxy.size.width / 2, height: geometryproxy.size.height / 3)
                .foregroundColor(.yellow)
                .frame(width: geometryproxy.size.width,
                       height: geometryproxy.size.height,
                       alignment: .center
                )
        }
    }
}

#Preview {
    QRCodeGuideLineView()
}
