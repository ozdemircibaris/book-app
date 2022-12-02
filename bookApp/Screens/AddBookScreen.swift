//
//  AddBookScreen.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import SwiftUI

struct AddBookScreen: View {
    @ObservedObject private var addBookVM = AddBookViewModel()
    @ObservedObject private var bookVM: BookListViewModel
    @State var imageData: NSImage
    @State var isVisible: Bool

    init() {
        self.bookVM = BookListViewModel()
        self.imageData = NSImage()
        self.isVisible = Bool()
    }

    var body: some View {
        VStack {
            ScrollView {
                TextField("title", text: $addBookVM.title)
                TextField("writer", text: $addBookVM.writer)
                Image(nsImage: imageData).border(.red, width: 4)
                Button("add book") {
                    self.isVisible = true
                    guard let testImage = self.snapshot() else { return }
                    imageData = testImage
                    //                self.addBookVM.addBook()
                }
                .sheet(isPresented: $isVisible) {
                    VStack {
                        Text("simple sharing abi")
                        Button("tamam yeterli") {
                            self.isVisible = false
                        }
                    }.frame(width: 400, height: 200)
                 }
            }
        }.frame(width: 500, height: 500)
    }
}
