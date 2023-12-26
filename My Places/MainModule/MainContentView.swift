//
//  ContentView.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
       
        List {
            PlaceRowView()
            PlaceRowView()
            PlaceRowView()
            PlaceRowView()
            PlaceRowView()
            PlaceRowView()
            PlaceRowView()
            PlaceRowView()
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    MainContentView()
}
