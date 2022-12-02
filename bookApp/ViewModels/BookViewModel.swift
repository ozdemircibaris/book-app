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
    
    func changeTest(value: String) {
        test = value
    }

    func addBook(createBookRequest: CreateBookRequest) {
        DispatchQueue.main.async {
            self.bookList.append(BookViewModel(book: Book(id: createBookRequest.id, title: createBookRequest.title, writer: createBookRequest.writer)))
        }
    }
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
