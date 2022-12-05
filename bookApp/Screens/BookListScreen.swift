//
//  BookList.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import SwiftUI

struct BookListScreen: View {
    @EnvironmentObject var bookVM: BookListViewModel

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: AddBookScreen()) {
                    Text("Add Book")
                }

                List(self.bookVM.bookList, id: \.id) { book in
                    HStack {
                        Text("\(book.title) BOOK")
                        Text(book.writer)
                    }
                }
            }
        }
    }
}

struct BookListScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookListScreen()
    }
}
