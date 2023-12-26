//
//  NewPlaceContentView.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI
import Combine

struct NewPlaceContentView: View {
    
    
    
    var body: some View {
            ScrollView {
                ZStack {
                    Image(.defaultPhoto)
                        .resizable()
                        .aspectRatio(1.35, contentMode: .fit)
                        .frame(height: 300)
                        .clipped()
                }
                .background(Color.gray)
                
                PlaceTextField(type: "name")
                PlaceTextField(type: "location")
                PlaceTextField(type: "type")
                
                .navigationTitle("New Place")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Save")
                        })
                    }
                }
            }
        
    }
    
    
}

#Preview {
    NewPlaceContentView()
}


