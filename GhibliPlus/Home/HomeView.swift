//
//  HomeView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            
            ScrollView {
                VStack {
                    Text("Ghibli")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    CarouselView()

                    
                    ForEach(MovieSection.movieSections) { section in
                        MovieSectionView(movieSection: section)
                            .frame(width: UIScreen.main.bounds.width)
                            
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
