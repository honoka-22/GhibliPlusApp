//
//  PlayerView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var playerSize: CGSize = .zero
    var videoID: String
    
    var body: some View {
        YoutubePlayer(videoID: videoID)
            .frame(
                width: playerSize.width,
                height: playerSize.height
            )
        .onAppear {
            // windowサイズからplayerサイズを算出.
            let frame = UIApplication.shared.windows.first?.frame ?? .zero
            
            // 縦横比が16:9になるように高さを調整.
            playerSize = CGSize(
                width: frame.width,
                height: frame.width / 16 * 9
            )
        }
    }
}
