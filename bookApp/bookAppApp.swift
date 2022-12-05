//
//  bookAppApp.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import SwiftUI

@main
struct bookAppApp: App {
    @StateObject var bookVM: BookListViewModel = BookListViewModel()
    @StateObject var addBookVM: AddBookViewModel = AddBookViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(bookVM)
                .environmentObject(addBookVM)
        }
    }
}
