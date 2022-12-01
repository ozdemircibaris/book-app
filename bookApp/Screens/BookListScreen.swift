//
//  BookList.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import SwiftUI

struct BookListScreen: View {
    @ObservedObject private var bookVM: BookListViewModel
    
    init() {
        self.bookVM = BookListViewModel()
    }
    
    var body: some View {
        let _ = print("book", bookVM.bookList)
        Text("book list")
    }
}

struct BookListScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookListScreen()
    }
}
