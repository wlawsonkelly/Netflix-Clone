//
//  Movie.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL

    var categories: [String]
}
