//
//  BookViewModel.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation

class BookListViewModel: ObservableObject {
    @Published var bookList = [BookViewModel]()
}

extension BookListViewModel {
    func deleteBook(bookId: String) {
        let filtered = bookList.filter { $0.id != bookId }
        bookList = filtered
    }
}

extension BookListViewModel {
    func updateBook(bookId: String, title: String, writer: String) {
        if let itemIndex = bookList.firstIndex(where: { $0.id == bookId }) {
            bookList[itemIndex].title = "new title"
            bookList[itemIndex].writer = "deneme"
        }
    }
}

struct BookViewModel {
    var book: Book
    
    var id: String {
        book.id.uuidString
    }
    
    var title: String {
        get {
            return book.title
        }
        set(title) {
            book.title = title
        }
    }
    
    var writer: String {
        get {
            return book.writer
        }
        set(writer) {
            book.writer = writer
        }
    }
    
}
