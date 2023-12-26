//
//  PlaceRowView.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct PlaceRowView: View {
    
    let place: PlaceModel
    
    var body: some View {
        HStack {
            Image(place.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(place.name)
                Text(place.location)
                Text(place.type)
            }
        }
        .frame(height: 70)
    }
}

#Preview {
    PlaceRowView(place: PlaceModel(image: .X_O, name: "Name", location: "Location", type: "Type"))
}
