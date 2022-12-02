//
//  CreateBookRequest.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation

struct CreateBookRequest: Codable {
    let id: UUID
    let title: String
    let writer: String
}
