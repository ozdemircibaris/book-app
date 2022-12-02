//
//  AddBookViewModel.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation
import SwiftUI

class AddBookViewModel: ObservableObject {
    var title: String = ""
    var writer: String = ""
    
    @ObservedObject private var bookVM = BookListViewModel()
    
    func addBook() {
        DispatchQueue.main.async {
            self.bookVM.bookList.append(BookViewModel(book: Book(id: UUID(), title: self.title, writer: self.writer)))
        }
        print("book list", self.bookVM.bookList)
    }
}
