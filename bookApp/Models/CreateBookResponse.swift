//
//  CreateBookResponse.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation

struct CreateBookResponse: Decodable {
    let status: String
    let data: Book
}
