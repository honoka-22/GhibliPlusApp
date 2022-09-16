//
//  YoutubePlayer.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI
import YoutubeKit

struct YoutubePlayer: UIViewRepresentable {
    
    typealias UIViewType = YTSwiftyPlayer
    
    var videoID: String
    
    func makeUIView(context: Context) -> YTSwiftyPlayer {
        // 初期化処理・初期設定.
        let player = YTSwiftyPlayer()
        player.autoplay = true
        return player
    }
    
    func updateUIView(_ uiView: YTSwiftyPlayer, context: Context) {
        // 再生する動画の設定.
        uiView.setPlayerParameters([
            .playsInline(true),
            .videoID(videoID),
        ])
        uiView.loadPlayer()
    }
}
