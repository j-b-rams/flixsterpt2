//
//  Album.swift
//  lab-tunley
//
//  Created by Joshua Abrams on 2/12/23.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let poster_path: String
}
