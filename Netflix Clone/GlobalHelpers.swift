//
//  GlobalHelpers.swift
//  Netflix Clone
//
//  Created by Lawson Kelly on 8/10/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "SiFi - TV", "Suspensful", "Exciting"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "The Matrix", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Dystopian", "SiFi - TV", "Suspensful", "Exciting"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Office Space", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "SiFi - TV", "Suspensful", "Exciting"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Superbad", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "SiFi - TV", "Suspensful", "Exciting"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Batman Begins", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "SiFi - TV", "Suspensful", "Exciting"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Caddy Shack", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "SiFi - TV", "Suspensful", "Exciting"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie1,exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.clear, Color.black]),
        startPoint: .top,
        endPoint: .bottom
    )
}
