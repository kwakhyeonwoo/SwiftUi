//
//  ProfileView.swift
//  deepLink
//
//  Created by 곽현우 on 7/22/24.
//

import Foundation
import SwiftUI

struct ProfileView : View {
    var body: some View{
        Rectangle().foregroundColor(Color.init(Color.purple))
            .frame(width: 100, height: 100)
            .cornerRadius(15)
            .overlay(
                Text("프로필")
                    .font(.system(size: 23))
                    .fontWeight(.black)
                    .foregroundColor(.white)
            )
    }
}

#Preview {
    ProfileView()
}
