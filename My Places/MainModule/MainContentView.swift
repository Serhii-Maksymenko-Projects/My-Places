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
                    PlaceRowView(place: place)
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
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                    })
                }
            }
        }
    }
}

#Preview {
    MainContentView()
}
