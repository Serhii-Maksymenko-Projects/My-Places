//
//  ContentView.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        
        NavigationView {
            Text("My Place")
                .font(.custom("snell roundhand", size: 24))
                .fontWeight(.bold)
        }
        .frame(height: 40)
       
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
