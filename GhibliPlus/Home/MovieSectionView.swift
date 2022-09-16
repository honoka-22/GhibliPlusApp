//
//  MovieSectionView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct MovieSectionView: View {
    var movieSection: MovieSection
    @State private var selectedMovie: Movie?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movieSection.sectionName)
                .font(.title3)
                .bold()
                .foregroundColor(.gray)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(movieSection.movies) { movie in
                        Button {
                            self.selectedMovie = movie
                        } label: {
                            Image(movie.posterImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                                .frame(width: 150)
                        }
                        .sheet(item: self.$selectedMovie) { movie in
                            MovieDetailView(movie: movie)
                        }
                        
                    }
                }
            }
        }.padding()
    }
}
