//
//  BookViewModel.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation

class BookListViewModel: ObservableObject {
    @Published var bookList = [BookViewModel]()
    @Published var test: String = ""
}

struct BookViewModel {
    let book: Book
    
    var id: String {
        book.id.uuidString
    }
    
    var title: String {
        book.title
    }
    
    var writer: String {
        book.writer
    }
    
}
