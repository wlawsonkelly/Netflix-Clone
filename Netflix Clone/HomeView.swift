//
//  HomeView.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import SwiftUI

struct HomeView: View {
    var homeVM = HomeVM()
    let screen = UIScreen.main.bounds

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                VStack(spacing: 0) {
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                    ForEach(homeVM.allCategories, id: \.self) { category in
                        VStack(spacing: 0) {
                            HStack(spacing: 0) {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            .padding(.bottom, 4)
                            ScrollView(.horizontal, showsIndicators: true) {
                                HStack(spacing: 0) {
                                    ForEach(homeVM.getMovie(for: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 16)
                                    }
                                }
                            }
                        }
                        .padding(.vertical, 4)
                    }
                    Spacer()
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
