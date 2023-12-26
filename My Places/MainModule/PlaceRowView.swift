//
//  PlaceRowView.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct PlaceRowView: View {
    var body: some View {
        HStack {
            Image(.X_O)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Name")
                Text("Location")
                Text("Type")
            }
        }
        .frame(height: 70)
    }
}

#Preview {
    PlaceRowView()
}
