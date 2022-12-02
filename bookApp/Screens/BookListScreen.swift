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
        NavigationStack {
            VStack {
                NavigationLink(destination: AddBookScreen()) {
                    Text("Add Book")
                }
                Button("update test") {
                    bookVM.changeTest(value: "deneme")
                }
                Text("book list \(bookVM.test)")
            }.onReceive(self.bookVM.$bookList) { count in
                print("on receive",count)
            }
        }
    }
}

struct BookListScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookListScreen()
    }
}
