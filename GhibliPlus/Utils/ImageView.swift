//
//  ImageView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import Foundation

class ImageView: ObservableObject {
    
    private func convertInput() -> String {
        guard let url = URL(string: movie.image) else {
            print("画像URLが正しくありません")
            continue
        }
        
        // インターネットから画像データを取得する
        let data = try? Data(contentsOf: url)
        // データを画像化
        let image = UIImage(data: data ?? Data()) ?? UIImage()
        
        inputs.append(MovieView.Input(id: movie.id, image: image, title: movie.title))
    }
    return inputs
}



