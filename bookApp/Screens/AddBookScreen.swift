//
//  AddBookScreen.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import SwiftUI

struct AddBookScreen: View {
    @EnvironmentObject var addBookVM: AddBookViewModel
    @EnvironmentObject var bookVM: BookListViewModel

    var body: some View {
        VStack {
            ScrollView {
                TextField("title", text: $addBookVM.title)
                TextField("writer", text: $addBookVM.writer)
//                Image(nsImage: imageData).border(.red, width: 4)
                Button("add book") {
//                    self.isVisible = true
//                    guard let testImage = self.snapshot() else { return }
//                    imageData = testImage
                    addBookVM.addBook()
                }
            }
        }.frame(width: 500, height: 500)
            .onAppear {
                addBookVM.setup(bookVM)
            }
    }
}
