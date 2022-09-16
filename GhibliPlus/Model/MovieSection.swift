//
//  MovieSection.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import Foundation

struct MovieSection: Identifiable {
    let id = UUID()
    var sectionName: String
    var movies: [Movie]
}

extension MovieSection {
    static var movieSections: [MovieSection] {
        return
            [recommended, hitMovies, playing]
    }
    
    static var recommended: MovieSection {
        return MovieSection(sectionName: "Recommended For You", movies: sampleMovies.shuffled())
    }
    
    static var hitMovies: MovieSection {
        return MovieSection(sectionName: "Hit Movies", movies: sampleMovies.shuffled())
    }
    
    static var playing: MovieSection {
        return MovieSection(sectionName: "Currently Playing", movies: sampleMovies.shuffled())
    }
    
    static var sampleMovies: [Movie] {
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
            // 耳をすませば
            Movie(title: "Whisper of the Heart",
                  posterImage: "Whisper",
                  promoImage: "WhisperImage",
                  details: "Shizuku lives a simple life, dominated by her love for stories and writing. One day she notices that all the library books she has have been previously checked out by the same person: 'Seiji Amasawa'. Curious as to who he is, Shizuku meets a boy her age whom she finds infuriating, but discovers to her shock that he is her 'Prince of Books'. As she grows closer to him, she realises that he merely read all those books to bring himself closer to her. The boy Seiji aspires to be a violin maker in Italy, and it is his dreams that make Shizuku realise that she has no clear path for her life. Knowing that her strength lies in writing, she tests her talents by writing a story about Baron, a cat statuette belonging to Seiji's grandfather.",
                  videoID: "cX_QeMx4ods"),
            // もののけ姫
            Movie(title: "Princess Mononoke",
                  posterImage: "Mononoke",
                  promoImage: "MononokeImage",
                  details: "Ashitaka, a prince of the disappearing Ainu tribe, is cursed by a demonized boar god and must journey to the west to find a cure. Along the way, he encounters San, a young human woman fighting to protect the forest, and Lady Eboshi, who is trying to destroy it. Ashitaka must find a way to bring balance to this conflict.",
                  videoID: "fK2nW1eybN0"),
            // 千と千尋の神隠し
            Movie(title: "Spirited Away",
                  posterImage: "Spirited",
                  promoImage: "SpiritedImage",
                  details: "Spirited Away is an Oscar winning Japanese animated film about a ten year old girl who wanders away from her parents along a path that leads to a world ruled by strange and unusual monster-like animals. Her parents have been changed into pigs along with others inside a bathhouse full of these creatures. Will she ever see the world how it once was?",
                  videoID: "etiQRSOkOIg"),
            // 猫の恩返し
            Movie(title: "The Cat Returns",
                  posterImage: "CatReturns",
                  promoImage: "CatReturnsImage",
                  details: "Haru, a schoolgirl bored by her ordinary routine, saves the life of an unusual cat and suddenly her world is transformed beyond anything she ever imagined. The Cat King rewards her good deed with a flurry of presents, including a very shocking proposal of marriage to his son! Haru embarks on an unexpected journey to the Kingdom of Cats where her eyes are opened to a whole other world.",
                  videoID: "0sEycbCo4SE"),
            // ハウルの動く城
            Movie(title: "Howl's Moving Castle",
                  posterImage: "Howl",
                  promoImage: "HowlImage",
                  details: "When Sophie, a shy young woman, is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking home.",
                  videoID: "_hsAkoI07Jg"),
            // 崖の上のポニョ
            Movie(title: "Ponyo",
                  posterImage: "Ponyo",
                  promoImage: "PonyoImage",
                  details: "The son of a sailor, 5-year old Sosuke lives a quiet life on an oceanside cliff with his mother Lisa. One fateful day, he finds a beautiful goldfish trapped in a bottle on the beach and upon rescuing her, names her Ponyo. But she is no ordinary goldfish. The daughter of a masterful wizard and a sea goddess, Ponyo uses her father's magic to transform herself into a young girl and quickly falls in love with Sosuke, but the use of such powerful sorcery causes a dangerous imbalance in the world. As the moon steadily draws nearer to the earth and Ponyo's father sends the ocean's mighty waves to find his daughter, the two children embark on an adventure of a lifetime to save the world and fulfill Ponyo's dreams of becoming human.",
                  videoID: "V-jQ3VaaLAQ"),
            // 借りぐらしのアリエッティ
            Movie(title: "Arrietty",
                  posterImage: "Arrietty",
                  promoImage: "ArriettyImage",
                  details: "14-year-old Arrietty and the rest of the Clock family live in peaceful anonymity as they make their own home from items 'borrowed' from the house's human inhabitants. However, life changes for the Clocks when a human boy discovers Arrietty.",
                  videoID: "BZqVL8ryhJQ"),
            // コクリコ坂から
            Movie(title: "From Up on Poppy Hill",
                  posterImage: "Kokuriko",
                  promoImage: "KokurikoImage",
                  details: "he story is set in 1963 in Yokohama. Kokuriko Manor sits on a hill overlooking the harbour. A 16 year-old girl, Umi, lives in that house. Every morning she raises a signal flag facing the sea. The flag means “I pray for safe voyages”. A 17 year-old boy, Shun, always sees this flag from the sea as he rides a tugboat to school. Gradually the pair are drawn to each other but they are faced with a sudden trial. Even so, they keep going without running from facing the hardships of reality.",
                  videoID: "9nzpk_Br6yo"),
        ]
    }
}
