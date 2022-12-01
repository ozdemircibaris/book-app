//
//  ContentView.swift
//  bookApp
//
//  Created by 10lift on 1.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BookListScreen()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
