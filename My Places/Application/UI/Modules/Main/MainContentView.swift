//
//  ContentView.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct MainContentView: View {
    private let service = FakePlaceModelService()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(service.restaurants) { place in
                    NavigationLink(destination: NewPlaceContentView()) {
                        PlaceRowView(place: place)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("My Places")
                        .font(.custom("snell roundhand", size: 24))
                        .fontWeight(.bold)
                }
                ToolbarItem {
                    NavigationLink(destination: NewPlaceContentView()) {
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                    }
                }
                
            }
        }
    }
}

#Preview {
    MainContentView()
}
