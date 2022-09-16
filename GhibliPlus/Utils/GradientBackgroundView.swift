//
//  GradientBackgroundView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

/// 共通の背景設定
struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [Color("darkGrayColor"),  Color("darkBluishGrayColor")]),
            startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
