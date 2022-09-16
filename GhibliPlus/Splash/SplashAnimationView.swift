//
//  SplashAnimationView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI
import SwiftyGif

// GIF画像を再生
final class SplashAnimationView: UIViewRepresentable {
    
    var name = "free_gif.gif"
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        
        do {
            let gif = try UIImage(gifName: name)
            let imageView = UIImageView(gifImage: gif, loopCount: 1)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame = view.bounds
            
            view.addSubview(imageView)
            
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
                imageView.heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
        } catch {
            print(error)
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

