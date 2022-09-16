//
//  SplashView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    var body: some View {
        
        VStack {
            if isActive {
                ContentView()
            } else {
                SplashAnimationView()
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            // 初期起動時にアニメーションを再生
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                withAnimation {
                    self.isActive.toggle()
                }
            }
        }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
