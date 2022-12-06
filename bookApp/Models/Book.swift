//
//  Book.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation

struct Book: Codable {
    var id: UUID
    var title: String
    var writer: String
}
