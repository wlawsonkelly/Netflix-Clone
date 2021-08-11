//
//  TopMoviePreview.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie

    func isCatagoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }

    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack(spacing: 0) {
                Spacer()
                HStack(spacing: 0) {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack(spacing: 0) {
                            Text(category)
                                .font(.footnote)
                            if !isCatagoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                                    .padding(.leading, 4)
                            }
                        }
                        .padding(.horizontal, 3)
                    }
                }
                HStack(spacing: 0) {
                    Spacer()
                    SmallVerticleButton(text: "My List",
                                        isOn: true, isOnImage: "checkmark", isOffImage: "plus") {
                        print("tapped")
                    }
                    Spacer()
                    WhiteButton(text: "Play", imageName: "play.fill") {
                        print("Play tapped")
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticleButton(text: "Info",
                                        isOn: true, isOnImage: "info.circle", isOffImage: "info.circle") {
                        print("tapped")
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 300)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
