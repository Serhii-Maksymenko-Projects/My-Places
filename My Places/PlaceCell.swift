//
//  PlaceCell.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct PlaceCell: View {
    var body: some View {
        HStack {
            
            Image(.bonsai)
                .resizable()
//                .padding(5)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            VStack (alignment: .leading) {
                Text("Name")
                Text("Location")
                Text("Type")
                
            }
        }
        .frame(height: 70)
        
        
    }
}

#Preview {
    PlaceCell()
//    ContentView()
}
