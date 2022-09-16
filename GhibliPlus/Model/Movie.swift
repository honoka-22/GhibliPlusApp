//
//  Movie.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    /// 映画タイトル
    var title: String
    /// ポスター画像
    var posterImage: String
    /// プロモ画像
    var promoImage: String
    /// あらすじ
    var details: String
    /// 動画のID
    var videoID: String
}

// 仮データ
extension Movie {
    static var promos: [Movie] {
        return [
            // ラピュタ
            Movie(title: "Castle in the Sky",
                  posterImage: "CastleInTheSky",
                  promoImage: "CastleInTheSkyImage",
                  details: "The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa's science to make himself ruler of the world.",
                  videoID: "gB9V4a8d_TU"),
            // トトロ
            Movie(title: "My Neighbor Totoro",
                  posterImage: "Totoro",
                  promoImage: "TotoroImage",
                  details: "Two sisters move to the country with their father in order to be closer to their hospitalized mother, and discover the surrounding trees are inhabited by Totoros, magical spirits of the forest. When the youngest runs away from home, the older sister seeks help from the spirits to find her.",
                  videoID: "92a7Hj0ijLs"),
            // 魔女の宅急便
            Movie(title: "Kiki's Delivery Service",
                  posterImage: "Kiki",
                  promoImage: "KikiImage",
                  details: "A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.",
                  videoID: "QpZ86OAW6RA"),
        ]
    }
}
