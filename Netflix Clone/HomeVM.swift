//
//  HomeVM.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }

    init() {
        setupMovies()
    }

    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["TV"] = exampleMovies.shuffled()
        movies["Action"] = exampleMovies.shuffled()
        movies["Drama"] = exampleMovies.shuffled()
    }

    public func getMovie(for category: String) -> [Movie] {
        return movies[category] ?? []
    }
}
