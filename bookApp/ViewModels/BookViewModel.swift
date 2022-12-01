//
//  BookViewModel.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation

class BookListViewModel: ObservableObject {
    @Published var bookList = [BookViewModel]()
    
    func getBookList() {
        print("booklist",self.bookList)
    }
}


struct BookViewModel {
    let book: Book
    
    var id: String {
        book.id
    }
    
    var title: String {
        book.title
    }
    
    var writer: String {
        book.writer
    }
    
}
