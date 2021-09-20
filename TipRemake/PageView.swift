//
//  PageView.swift
//  TipRemake
//
//  Created by Alex Cannizzo on 20/09/2021.
//

import SwiftUI

struct PageView: View {
    let tipText = String(repeating: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", count: Int.random(in: 2...5))
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack(alignment: .leading) {
                    Image("Example")
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Pre-heading goes here")
                            .font(.subheadline)
                            .textCase(.uppercase)
                            .foregroundColor(.secondary)
                        
                        Text("Heading goes here")
                            .font(.title)
                        
                        Text(tipText)
                    }
                    .padding([.top, .horizontal])
                    .offset(x: geo.frame(in: .global).minX / 5)
                }
            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
