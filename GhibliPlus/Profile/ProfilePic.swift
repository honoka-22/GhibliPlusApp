//
//  ProfilePic.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct ProfilePic: View {
    var profile: Profile
    
    var body: some View {
        VStack {
            Text(profile.avatar)
                .font(.system(size: 80))
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [profile.backColor, .white]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 100).clipShape(Circle()))
                .shadow(color: Color("darkBluishGrayColor"), radius: 5, x: 5, y: 5)
                .shadow(color: Color("darkBluishGrayColor"), radius: 5, x: -5, y: -5)
            
            Text(profile.name)
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ProfilePic(profile: Profile(name: "Tiger", avatar: "🐯", backColor: Color.purple))
        }
    }
}
