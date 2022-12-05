//
//  AddBookViewModel.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import Foundation
import SwiftUI

class AddBookViewModel: ObservableObject {
    var bookVM: BookListViewModel?

    var uuid: UUID = UUID()
    var title: String = ""
    var writer: String = ""
    
    
    func setup(_ bookVM: BookListViewModel) {
      self.bookVM = bookVM
    }

    func addBook() {
        DispatchQueue.main.async {
            self.bookVM?.bookList.append(BookViewModel(book: Book(id: self.uuid, title: self.title, writer: self.writer)))
        }
    }
}
